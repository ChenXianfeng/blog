var express = require('express');
var app = express();
var mysql = require('mysql');
var $sql = require('./sqlfun');//sql语句
var models = require('./db');//数据库链接信息
var bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({ extended: false }));

var conn = mysql.createConnection(models.mysql);
conn.connect();
app.post('/', function (req, res) {
    var sql = $sql.user.add;
    var param = req.body;
	console.log(param);
    conn.query(sql, [param.big_title],  function(err, result) {
        if (err) {
            console.log(err);
        }
        if (result) {
            jsonWrite(res, result);	
        }	

    })
 })


 var server = app.listen(3000, function () {
 
    var host = server.address().address
    var port = server.address().port
   
    console.log("应用实例，访问地址为 http://%s:%s", host, port)
   
  })