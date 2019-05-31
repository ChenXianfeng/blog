var localhost= {
	localhost:"http://localhost:3000",
	ngrok:"https://chan.ngrok.xiaomiqiu.cn"
}
function getlocalhost(){
	if (document.location.protocol == "file:"){
		var url = localhost.ngrok;
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
function findall(a){
	$.ajax({
		type: "GET",
		url: getlocalhost()+"/findall",
		dataType: "json",
		success: function(data){
			var html = "";				
			for (var i = 0; i < data.length; i++) {  
				html = html + '<div class="card" style="margin-bottom:5px;">'
							  +'<div class="card-body">'   
							  +'<a href="blog.html" onclick = "setiid('+data[i].iid+')"><b>'+data[i].big_title
							  +'</b></a>'
							  +'<p>'+data[i].context+'...</p>'
							  +'<p></p>'
							  +'</div>'
							+'</div>';		
			}
			$("#cards").html(html);					
		}
	});
		}
function findalltype(){
	$.ajax({
		type: "GET",
		url: getlocalhost()+"/findalltype",
		dataType: "json",
		success: function(data){
			var html = "";				
			for (var i = 0; i < data.length; i++) {
				var type = 	"'"+data[i].name+"'";		
				html = html + '<a class="p-2 text-muted" href="type.html" onclick = '
				+'"settype('+type+')"><span style="color:#eee;">'+data[i].name+'</span></a>';		
			}
			$("#type").html(html);					
		}
	});

}
function findbytype(a){
	var type = $.cookie('type');
	$.ajax({
		type: "GET",
		url: getlocalhost()+"/findbytype?type="+type,
		dataType: "json",
		success: function(data){
			var html = "";				
			for (var i = 0; i < data.length; i++) {  
				html = html + '<div class="card" style="margin-bottom:5px;">'
							  +'<div class="card-body">'
							  +'<b>'+data[i].big_title+'</b><span class="badge badge-pill badge-secondary">'+data[i].type+'</span>'
							  +'<p>'+data[i].context+'...</p>'
							  +'<p><a href="blog.html" onclick = "setiid('+data[i].iid+')">'+a+'>></a></p>'
							  +'</div>'
							+'</div>';		
			}
			$("#cards").html(html);					
		}
	});
}
function findbyiid(){
	var iid = $.cookie('iid');
		$.ajax({
			type: "GET",
			url: getlocalhost()+"/findbyiid?iid="+iid,
			dataType: "json",
			success: function(data){
				$("#big_title").html(data[0].big_title);
				$("#create_date").html(data[0].create_date);
				$("#context").html(data[0].context);
			}
		});
}

function convert(){	
	var text = $("#oriContent").val();
	var converter = new showdown.Converter();
	var html = converter.makeHtml(text);
	$("#result").html(html);
}
	
function formsubmit(){
	var big_title = $("#big_title").val();
	var little_title = $("#little_title").val();
	var context = $("#result").html();
	var type = $("input[name='optradio']:checked").val();
	$.ajax({
		type: "post",
		url: getlocalhost()+"/addall",
		dataType: "json",
		data:{
			big_title:big_title,
			little_title:little_title,
			context:context,
			type:type
		},
		success: function(data){
			window.location.href = "success.html";			
		}
	});
}