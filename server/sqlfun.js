var sqlMap={
  blog_find:{
    findall:"select * from blog ;",
	findbybigtitle:"select * from blog where big_title = ?;",
	findbytype:"select * from blog where type = ?;",
	findbyiid:"select * from blog where iid = ?;"

  },
  blog_add:{
	addall:"insert into blog(big_title,little_title,context,create_date,change_date,type,remark) values(?,?,?,now(),now(),?,?)",
    addbig_title:"insert into blog(big_title) values(?)"	
  },
  type_find:{
	findall:"select * from type;"
  },
  type_add:{
	addall:"insert into type(name,blog)values(?,?)"  
  },
  type_change:{
	type_change:"update type set type = 1  where name = ?",
    type_changeall:"update type set type = 0"	
  },
  picture_add:{
	addall:"insert into picture(path)values(?)"
  }
  
}

module.exports=sqlMap;