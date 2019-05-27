var express = require("express");
var app = express();
var mysql = require('mysql');
var $sql = require('./sqlfun');//sql语句
var models = require('./db');//数据库链接信息
var bodyParser = require('body-parser');

app.use(bodyParser.urlencoded({ extended: false }));
var connection = mysql.createConnection(models.mysql);
connection.connect();
app.post("/",function(req,res){
	var sql = $sql.user.findall;
	console.log(sql);
	connection.query(sql,function (err, result) {
        if(err){
         console.log('[INSERT ERROR] - ',err.message);
         return;
        }else{
		 console.log(result);
         return;		 
		}
			
    });
});

app.post("/add",function(req,res){
	var sql = $sql.user.addall;
	var body = req.body;
	var params = [body.big_title,body.little_title];
	connection.query(sql,params,function (err, result) {
        if(err){
         console.log('[INSERT ERROR] - ',err.message);
         return;
        }else{
		 res.redirect('../blog/index.html');
         return;		 
		}
			
    });
});

app.post("/test",function(req,res){
	var str="";
	req.on("data",function(dt){
         str+=dt
    })
	req.on("end",function(){
         console.log(str)
    })
});

app.post("/test1",function(req,res){
	console.log(req.body);
});


app.listen(3000,function(){   //监听3000端口
    console.log("Server running at 3000 port");
});