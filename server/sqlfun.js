var sqlMap={
  user:{
    findall:"SELECT * from blog ;",
	findbybigtitle:"SELECT * from blog where big_title = ?;",
	addall:"insert into blog(big_title,little_title) values(?,?)"
  }
  
}

module.exports=sqlMap;