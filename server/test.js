var express = require("express");
var app = express();
var mysql = require('mysql');
var $sql = require('./sqlfun');//sql语句
var models = require('./db');//数据库链接信息
var bodyParser = require('body-parser');
var path = require('path');
var fs = require('fs');
var url = require('url');
var multer=require('multer');

var upload=multer({dest:'uploads/'})
app.use(express.static(path.join(__dirname,"../static")));
app.use(bodyParser.urlencoded({ extended: false }));
var connection = mysql.createConnection(models.mysql);
connection.connect();

app.post("/addall",function(req,res){
	var sql = $sql.blog_add.addall;
	var body = req.body;
	var params = [body.big_title,body.little_title,body.context,body.type,body.remark];
	connection.query(sql,params,function (err, result) {
        if(err){
         console.log('[INSERT ERROR] - ',err.message);
         return;
        }else{
		 res.setHeader("Access-Control-Allow-Origin", "*");
		 res.json(result);
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


app.get("/findbyiid",function(req,res){
	var sql = $sql.blog_find.findbyiid;
	var param =  url.parse(req.url, true).query;
	var params = [param.iid];
	connection.query(sql,params,function (err, result) {
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

app.get("/findalltype",function(req,res){
	var sql = $sql.type_find.findall;
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

app.post("/upload",upload.single('test'),function(req,res){
	let time=Date.now()+parseInt(Math.random()*999)+parseInt(Math.random()*2222);
	let extname=req.file.mimetype.split('/')[1]
	let keepname=time+'.'+extname    
	var filepath = path.join(__dirname,'/static/img/'+keepname);
	fs.readFile(req.file.path,(err,data)=>{ 
		fs.writeFile(filepath,data,(err)=>{			
			var sql = $sql.picture_add.addall;
			connection.query(sql,filepath,function (err, result) {
				if(err){
				 console.log('[INSERT ERROR] - ',err.message);
				 return;
				}else{
				 res.setHeader("Access-Control-Allow-Origin", "*");
				 res.send({"path":filepath});
				}	
			});    
		})
    })
});

app.get("/getimg",function(req,res){
    var param =  url.parse(req.url, true).query;
	fs.readFile(param.path,'binary',function(err,  file)  {
		if  (err)  {
			console.log(err);
			return;
		}else{
			res.writeHead(200,  {'Content-Type':'image/jpeg'});
			res.write(file,'binary');
			res.end();
		}
	});
});

app.post("/changetype",function(req,res){
    var sql = $sql.type_change.type_change;
	var body = req.body;
	var sqlover = $sql.type_change.type_changeall;
	connection.query(sqlover,function (err, result) {
		if(err){
			console.log('[INSERT ERROR] - ',err.message);
			return;
		}else{
			
		}			
	});
	for (var i = 0; i < body.chk_value.length; i++){
		var params = body.chk_value[i];
		connection.query(sql,params,function (err, result) {
			if(err){
				console.log('[INSERT ERROR] - ',err.message);
				return;
			}else{
				
			}
				
		});	
	}
	res.setHeader("Access-Control-Allow-Origin", "*");
	res.send({"success":"success"});

});

app.listen(3000,function(){   //监听3000端口
    console.log("Server running at 3000 port");
});