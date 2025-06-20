var express = require('express');
var router = express.Router();
var db = require('../sql.js');

/* GET admin page. */
router.get('/', function(req, res, next) {
  res.render('admin', { title: 'Express' });
});



//删除用户

router.delete('/delete/:id',  (req, res) => {
  const id = req.params.id;
  try {
    db.query('DELETE FROM user WHERE id = ?', [id]);
    res.send('删除成功');
  } catch (err) {
    console.log(res.status);  // 看是否是 200
    console.log(res.ok);      // 看是否为 true

    res.status(500).send('删除失败!!!!');
  }
});



//为用户增加抽奖次数

router.post('/add/:id',  (req, res) => {
  const id = req.params.id;
  const addValue = 1; // 要加的数值

  try {
    db.query('UPDATE user SET userRes = userRes + ? WHERE id = ?', [addValue, id]);
    res.send('添加成功');
  } catch (err) {
    console.log(res.status);  // 看是否是 200
    console.log(res.ok);      // 看是否为 true

    res.status(500).send('添加失败!!!!');
  }
});




// 全选，得到整张用户表格

router.post('/', (req, res, next) => {
  /**
   * 先确保在 app.js 入口里打开了解析中间件：
   *   app.use(express.urlencoded({ extended: false }));
   *   app.use(express.json());
   *
   * 这样就能用 req.body 取到提交的数据
   */
  const { username, password } = req.body;



  // 简单演示：判断用户名


  db.query("select * from admin where name = ? and password = ?", [username, password] , function(err,data){

     if(err){
        throw err;
    
     }else if(data.length >0) {
          
            
        db.query('SELECT * FROM user', (err, results) => {
                if (err) throw err;

                // ✅ 现在 results 就是一个数组，包含表里的每一行
                console.log(results);  // 打印结果看看长什么样

                // 举例：赋值给变量
                const allUser = results;

                // 如果只想取第一个用户
                

                res.render("adminlist", {results})
       });
          
     }else{
          console.log('接收到的账号密码：', username, password);
        
        res.end('login in failure');
     }


  } )


  
});


router.get('/restore', (req, res, next)=>{
    storeQuery= `
    UPDATE global_pool
    SET is_drawn = 0;`

    db.query(storeQuery, (err,data)=>{

     if (err) return res.status(500).json({ error: '全部卡牌入库失败' });

    res.json({success: true});
     


    } );

})


module.exports = router;
