var sqlMap={
  blog_find:{
    findall:"select * from blog ;",
	findbybigtitle:"select * from blog where big_title = ?;",
	findbytype:"select * from blog where type = ?;",
	findbyiid:"select * from blog where iid = ?;"

  },
  blog_add:{
	addall:"insert into blog(big_title,little_title,context,create_date,change_date,type) values(?,?,?,now(),now(),?)",
    addbig_title:"insert into blog(big_title) values(?)"	
  }
  
}

module.exports=sqlMap;