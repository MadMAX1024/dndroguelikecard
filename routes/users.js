var express = require('express');
var router = express.Router();
var db = require('../sql.js');


/* GET users listing. */
router.get('/', function(req, res, next) {
  res.render('user');
});



//  列出用户已经拥有的卡牌
router.get('/owned', function(req, res, next) {
  const userId = req.query.userId;

  const query = `
    SELECT c.id AS card_id, c.name, c.description, c.type, c.icon
    FROM user_cards uc
    JOIN cards c ON uc.card_id = c.id
    WHERE uc.user_id = ?
  `;

 db.query(query, [userId] , (err, result)=>{
if (err) return res.status(500).json({ success: false, message: '查询失败' });

    res.json({ success: true, cards: result });

});
})




router.post('/register', (req, res) => {
  const { username, password, confirm } = req.body;

  if (password !== confirm) {
    return res.status(400).send('两次密码不一致');
  }

  // 1. 先查询用户名是否存在
  db.query('SELECT * FROM user WHERE userName = ?', [username], (err, result) => {
    if (err) {
      console.error('查询失败:', err);
      return res.status(500).send('服务器错误');
    }

    if (result.length > 0) {
      return res.status(400).send('用户名已存在');
    }

    // 2. 不存在则插入
    db.query('INSERT INTO user (userName, userPwd) VALUES (?, ?)', [username, password], (err2, data) => {
      if (err2) {
        console.error('插入失败:', err2);
        return res.status(500).send('注册失败');
      }
       const userId = data.insertId;  // ✅ 直接拿到插入记录的自增 id
       const userRes = 0;
      
      res.render('userlist' , {username, userId, userRes});
    });
  });
});





router.post('/login', (req, res, next) => {
  /**
   * 先确保在 app.js 入口里打开了解析中间件：
   *   app.use(express.urlencoded({ extended: false }));
   *   app.use(express.json());
   *
   * 这样就能用 req.body 取到提交的数据
   */
  const { username, password } = req.body;

 // 简单演示：判断用户名


  db.query("select * from user where userName = ? and userPwd = ?", [username, password] , function(err,data){

     if(err){
        throw err;
    
     }else if(data.length >0) {
          
            userId = data[0].id;
            userRes = data[0].userRes;
            
      res.render('userlist', {username, userId, userRes});
          
     }else{
          console.log('接收到的账号密码：', username, password);
        
        res.end('login in failure');
     }


  } )


  
});







//卡牌抽取逻辑：
//三层嵌套。

router.post('/draw', (req, res) => {
  const userId = req.body.userId;


  // 添加了验证逻辑：抽卡行动前，验证用户是否还有抽卡次数。
   const checkResQuery = `SELECT userRes FROM user WHERE id = ?`;
   db.query(checkResQuery, [userId], (err, result) => {
    if (err) return res.status(500).json({ success: false, message: '数据库查询失败' });
    if (result.length === 0) return res.status(404).json({ success: false, message: '用户不存在' });
    
    const currentRes = result[0].userRes;
    if (currentRes <= 0) {
      return res.json({ success: false, message: '抽卡次数已用完' });
    }

      // 1. 抽取 3 张未被抽走的卡牌
  const drawQuery = `
    SELECT gp.card_id, c.name, c.description, c.icon, c.type
    FROM global_pool gp
    JOIN cards c ON gp.card_id = c.id
    WHERE gp.is_drawn = FALSE
    ORDER BY RAND()
    LIMIT 3
  `;

  db.query(drawQuery, (err, results) => {
    if (err) return res.status(500).json({ error: '数据库错误' });
    if (results.length < 3) {
      return res.status(400).json({ error: '卡池中不足3张卡牌' });
    }
       // 抽取卡牌行动前，需要先扣除抽取次数。
    const updateResQuery = `UPDATE user SET userRes = userRes - 1 WHERE id = ?`;
    
    db.query(updateResQuery, [userId], (err2) => {
        if (err2) return res.status(500).json({ success: false, message: '扣除抽卡次数失败' });
        // 扣除抽卡次数之后，则进入抽卡环节。
        
       //抽卡环节
       const ids = results.map(c => c.card_id);
       const updateQuery = `UPDATE global_pool SET is_drawn = TRUE WHERE card_id IN (?, ?, ?)`;

       db.query(updateQuery, ids, (err3) => {
       if (err3) return res.status(500).json({ error: '卡牌锁定失败' });
       res.json({ success: true, cards: results}); // 传给前端卡牌内容
    }); 

      
      }); 


   
  });

    })

});


//选择功能

router.post('/choose', async (req, res) => {
  const { userId, chosenCardId, allCardIds } = req.body;

  if (!allCardIds.includes(chosenCardId)) {
    return res.status(400).json({ error: '非法操作：所选卡不在候选中' });
  }

  // 1. 添加用户拥有卡
  await db.execute(`
    INSERT IGNORE INTO user_cards (user_id, card_id)
    VALUES (?, ?)
  `, [userId, chosenCardId]);

  // 2. 剩余两张卡返还池中
  const rest = allCardIds.filter(id => id !== chosenCardId);
  if (rest.length > 0) {
    await db.execute(`
      UPDATE global_pool SET is_drawn = FALSE WHERE card_id IN (?, ?)
    `, rest);
  }
  let cardAddName, cardAddDescription;


  db.query("select * from cards where id= ?", [chosenCardId] , (err, result)=>{
     if(err){
        throw err;
    
     }else if(result.length >0) {
          
       cardAddName = result[0].name;
       cardAddDescription  = result[0].description;
       cardAddIcon = result[0].icon;
       cardAddType = result[0].type;
       res.json({
         "success": true,
         "card": {
           "card_id": chosenCardId,
           "name": cardAddName,
           "description": cardAddDescription,
           "icon": cardAddIcon,
           "type": cardAddType
           }
           }
       );
          
     }else{
          console.log('卡牌库错误', data);
        
          res.end('在获取用户已有卡牌时，查询卡牌错误');
     }
  


  })
  
});


router.get('/res', (req, res, next) => {
     const userId = req.query.userId;
     db.query('select userRes from user where id = ? ', [userId], (err, data)=>{
    
       if (err) return res.status(500).json({ error: '获取剩余抽卡次数失败' });
       res.json({ success: true, userRes: data[0].userRes }); // 


     } )
   

})




module.exports = router;
