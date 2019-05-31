var localhost= {
	localhost:"http://localhost:3001",
	ngrok:"https://chan.ngrok.xiaomiqiu.cn"
}
function getlocalhost(){
	if (document.location.protocol == "file:"){
		var url = localhost.localhost;
	}else{
		var url = localhost.ngrok;
	}
    return url;
}