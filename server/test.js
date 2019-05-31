var express = require("express");
var app = express();
var mysql = require('mysql');
var $sql = require('./sqlfun');//sql语句
var models = require('./db');//数据库链接信息
var bodyParser = require('body-parser');
var path = require('path');
var fs = require('fs');
var url = require('url');

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

app.post("/addall",function(req,res){
	var sql = $sql.blog_add.addall;
	var body = req.body;
	var params = [body.big_title,body.little_title,body.context,body.type];
	connection.query(sql,params,function (err, result) {
        if(err){
         console.log('[INSERT ERROR] - ',err.message);
         return;
        }else{
		 res.setHeader("Access-Control-Allow-Origin", "*");
		 res.json(result);
    	 console.log("success!!");
		}
			
    });
});

app.get("/addalls",function(req,res){	
    var sql = $sql.blog_add.addbig_title;
	var body = url.parse(req.url, true).query;
	var params = [body.big_title];
	connection.query(sql,params,function (err, result) {
        if(err){
         console.log('[INSERT ERROR] - ',err.message);
         return;
        }else{
		 res.setHeader("Access-Control-Allow-Origin", "*");
		 res.json(result);
		 console.log(result);
    	 console.log("success!!");
		 return;
		}
			
    });
});


app.get("/findall",function(req,res){
	var sql = $sql.blog_find.findall;
	connection.query(sql,function (err, result) {
        if(err){
         console.log('[ERROR] - ',err.message);
         return;
        }else{
		 res.setHeader("Access-Control-Allow-Origin", "*");
		 res.json(result);
         return;		 
		}
			
    });
});

app.get("/findbytype",function(req,res){
	var sql = $sql.blog_find.findbytype;
	var param =  url.parse(req.url, true).query;
	var params = [param.type];
	connection.query(sql,params,function (err, result) {
        if(err){
         console.log('[INSERT ERROR] - ',err.message);
         return;
        }else{
		 res.setHeader("Access-Control-Allow-Origin", "*");
		 res.json(result);
         return;		 
		}
			
    });
});

app.get("/findbybigtitle",function(req,res){
	var sql = $sql.blog_find.findbytype;
	var param =  url.parse(req.url, true).query;
	var params = [param.type];
	connection.query(sql,params,function (err, result) {
        if(err){
         console.log('[INSERT ERROR] - ',err.message);
         return;
        }else{
		 res.setHeader("Access-Control-Allow-Origin", "*");
		 res.json(result);
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
			   fs.readFile(filePath, function (err, data) {
			if (err) {
			  throw err;
			}
			// 设置请求头，访问文件类型为 css 文件
			res.setHeader("Content-Type", "text/html");
			res.end(data);
		   })
});


app.listen(3000,function(){   //监听3000端口
    console.log("Server running at 3000 port");
});