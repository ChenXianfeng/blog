var sqlMap={
  user:{
    login:"SELECT * from blog where type=?;",
	add:"insert into blog(big_title) values(?)"
  }
  
}

module.exports=sqlMap;