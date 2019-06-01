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
module.exports=router;