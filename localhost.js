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
function showbolg(data){
	var html= "";
	if(data.length>0){
		for (var i = 0; i < data.length; i++) {  
			html = html + '<div class="card">'
						  +'<div class="card-body">'   
						  +'<a href="blog.html" onclick = "setiid('+data[i].iid+')"><b>'+data[i].big_title
						  +'</b></a>'
						  +'<p>'+data[i].remark+'</p>'
						  +'<p></p>'
						  +'</div>'
						+'</div>';		
		}	
	}else{
		html = "nothing..";
	}	
	return html;
}
function findall(){
	$.ajax({
		type: "GET",
		url: getlocalhost()+"/findall",
		dataType: "json",
		success: function(data){
			var html = showbolg(data);
			$("#cards").html(html);								
		},
		error:function(e){
			$("#cards").html("nothing..");
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
			var htmltype = "";			
			for (var i = 0; i < data.length; i++) {
				if(data[i].type != 0){
					var type = 	"'"+data[i].name+"'";		
					html = html + '<a class="p-2 text-muted" href="'+data[i].href+'" onclick = '
					+'"settype('+type+')"><span style="color:#eee;">'+data[i].name+'</span></a>';
					htmltype = htmltype +'<option>'+data[i].name+'</option>';					
				}
			}         	
			$("#blog_type").html(htmltype);			
			$("#type").html(html);					
		}
	});

}

function findmytype(){
	$.ajax({
		type: "GET",
		url: getlocalhost()+"/findalltype",
		dataType: "json",
		success: function(data){
			var html = "";				
			for (var i = 0; i < data.length; i++) {
				if(data[i].type == 1){
					html = html + ' <div class="form-check">'
										+'<label class="form-check-label">'
											+'<input type="checkbox" name="checkboxtype" class="form-check-input" value="'+data[i].name+'" checked>'+data[i].name
										+'</label>'
									+'</div>';
				}else if(data[i].type == 2){
					html = html + ' <div class="form-check">'
										+'<label class="form-check-label">'
											+'<input type="checkbox" name="checkboxtype" class="form-check-input" value="'+data[i].name+'" checked disabled>'+data[i].name
										+'</label>'
									+'</div>';	
				}else{
					html = html + ' <div class="form-check">'
										+'<label class="form-check-label">'
											+'<input type="checkbox" name="checkboxtype" class="form-check-input" value="'+data[i].name+'" >'+data[i].name
										+'</label>'
									+'</div>';					
				}
			}
			$("#choice").html(html);					
		}
	});

}

function findbytype(){
	var type = $.cookie('type');
	$.ajax({
		type: "GET",
		url: getlocalhost()+"/findbytype?type="+type,
		dataType: "json",
		success: function(data){
			var html = showbolg(data);
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
				$("#blog_type").html(data[0].type);
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
	var remark = $("#remark").html();
	var type = $("#blog_type").val();
	if (remark == ""){
		remark = context.replace(/<[^>]+>/g,"").substring(0, 200);
	}else{
		remark = remark.replace(/<[^>]+>/g,"");
	}
	remark = $.trim(remark);
	//
	$.ajax({
		type: "post",
		url: getlocalhost()+"/addall",
		dataType: "json",
		data:{
			big_title:big_title,
			little_title:little_title,
			context:context,
			type:type,
			remark:remark
		},
		success: function(data){
			window.location.href = "success.html";			
		}
	});
}
function flieimg(){
	var formData = new FormData(); 
	formData.append('test', $('#file')[0].files[0]);
	$.ajax({
		url: getlocalhost()+'/upload',
		type: 'POST',
		cache: false, //上传文件不需要缓存
		data: formData,
		processData: false, 
		contentType: false, 
		success: function (data) {
			var text = $("#oriContent").val();
			var img = '!['+data.path+']('+getlocalhost()+'/getimg?path='+data.path+')';
			text = text + img;
			$("#oriContent").val(text);
			var converter = new showdown.Converter();
			var html = converter.makeHtml(text);
			$("#result").html(html);
			alert(html);
		}
	}) 
}

function getType(){
	var chk_value =[];   
	$('input[name="checkboxtype"]:checked').each(function(){
		chk_value.push($(this).val());				
	});
	//chk_value = $.makeArray(chk_value);
	$.ajax({
		type: "POST",
		url: getlocalhost()+"/changetype",
		dataType: "json",
		traditional:true,
		data:{
			chk_value:chk_value
		},
		success: function(data){

			window.location.href = "success.html";			
		}
	});
}