var localhost= {
	localhost:"http://localhost:3000",
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
function setiid(value){
	$.cookie('iid', value);
}
function settype(value){
	$.cookie('type', value);
}