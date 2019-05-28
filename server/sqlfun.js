var sqlMap={
  user:{
    findall:"select * from blog ;",
	findbybigtitle:"select * from blog where big_title = ?;",
	addall:"insert into blog(big_title,little_title,context,create_date,change_date,type) values(?,?,?,now(),now(),?)"
  }
  
}

module.exports=sqlMap;