<%@ page language="java" contentType="text/html; charset=big5"
    pageEncoding="big5"%>
<!DOCTYPE html>
    
<html>
<head>


<meta charset="big5" name="viewport"
	content="width=device-width,initial-scale=0.5">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap/css/bootstrap-responsive.min.css">
<script src="<%=request.getContextPath() %>/bootstrap/js/bootstrap.min.js"></script>
<link href="<%=request.getContextPath() %>/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>


<link rel="import" href="<%=request.getContextPath() %>/x-gif-gh-pages/dist/x-gif.html">
<script src="<%=request.getContextPath() %>/x-gif-gh-pages/dist/platform.js"></script>
 
</head> 

<body>

<style>
  #fth{
  animation-timing-function: linear;
   -webkit-animation-timing-function: linear; 
  }
  #fab{
  animation-timing-function: linear;
   -webkit-animation-timing-function: linear; 
  }
  @keyframes bigg {
  
  from {
    font-size:1px;
     visibility : visible;
  }
  49%{
  visibility : visible;
  }
  50%{
  font-size:50px;
  visibility : hidden; 
  }
  to {
   font-size:1px;
    visibility : hidden; 
  
  }
}
@keyframes small {
  from {
    visibility : hidden;
  }
 49%{
 visibility : hidden;
 }
  50%{
   font-size:50px;
    visibility : visible;
  
  }
  to {
   font-size:1%;
   
    visibility : hidden; 
  
  }
}
  </style>
  

<div id="ts"></div>
<div style="display: -webkit-flex;
	display: flex;-webkit-align-items: center;
            align-items: center;
			-webkit-justify-content: center;
            justify-content: center; 
            background-position: 50% 50%;" >
	
<div style="align-self: flex-end;" >

</div>
<div  style="align-self:flex-end;">
<img  id="slow" src="<%=request.getContextPath() %>/gif/slow.png"  style="align-self:flex-end;min-width:10%;"></img>
</div>
<div id="fab" style="font-size:xx-large;align-self:center;width:100px;">吸氣</div>
<div id='gifcon' style=" width:350px;height:500px; background-position: 50% 50%;">
<x-gif id='gif' src='<%=request.getContextPath() %>/gif/1_all.gif' bpm='6.6' fill snap  ></x-gif>
</div>
<div id="fth" style="font-size:xx-small;align-self:center;width:100px;visibility : hidden;">呼氣</div>
<div  style="align-self:flex-end;">
<img  id="fast" src="<%=request.getContextPath() %>/gif/fast.png"  style="align-self:flex-end;min-width:10%;"></img>
</div>
<img id="sty1" src="<%=request.getContextPath() %>/gif/1c.svg" style="align-self:flex-start;width:20px;position:block;margin-top:30px;" ></img>
<img id="sty2" src="<%=request.getContextPath() %>/gif/2.svg" style="align-self:flex-start;width:20px;position:block;margin-top:30px;" ></img>
<img id="sty3" src="<%=request.getContextPath() %>/gif/3.svg" style="align-self:flex-start;width:20px;position:block;margin-top:30px;" ></img>
</div>

<br/>

<div id="res"></div>


<button  class="btn btn-block"  onclick="custom();">自定秒數</button> <br/>


<script>
var sp=6.6;
$("#fast").click(function(){
	sp=sp*1.2;
	$("#res").html("spped:"+parseInt(sp*100)/100+" 次/min");
	$('#gif').attr("bpm",sp);
	fab();
	fth();
});
$("#slow").click(function(){
	sp=sp*0.8;
	$("#res").html("spped:"+parseInt(sp*100)/100+" 次/min");
	$('#gif').attr("bpm",sp);
	fab();
	fth();
});

var i=0;
var ani=["./gif/1_all.gif" , "./gif/2_all.gif"];
$("#next").click(function(){
	
	i++;
	
	$('#gif').attr("src",ani[i%2]+"");
});
$("#back").click(function(){
	i--;
	if(i<0){i=-i;}
	$('#gif').attr("src",ani[i%2]+"");
});
function defult(){
	
	sp=6.6;
	$('#gif').attr("bpm",sp);
	
};
function custom(){
	
	
	//window.location.replace("<%=request.getContextPath() %>/page/breath?custom=Y");
	location.href = "<%=request.getContextPath() %>/page/breath?custom=Y";
	
};
function clock(){
	
		var ttt="<x-gif id='gif' src='http://i.imgur.com/iKXH4E2.gif' speed="+sp+"   ></x-gif>";
	
		$("#res").html(ttt);
		
};

   
	function go(){
		sp++;
		var ts="<div speed="+sp+" >"+sp+" </div>"
		$("#ts").html(ts);
		console.log(sp);
		$('#gif').attr("speed",sp)
		
		/*
		sp+=0.5;
		var ttt="<x-gif  src='http://i.imgur.com/iKXH4E2.gif' speed="+sp+" synced></x-gif>"
		$("#res").html(ttt);
		console.log(sp);
		*/
	}
	
	var t;
	/*
	function fast(){
		
	    	sp=sp*1.2;
	    	$("#res").html("spped:"+sp);
	    	$('#gif').attr("bmp",sp);
	  }*/
	function stop(){
		 
		
		 t=setInterval(function(){ 
			 i++;
			 console.log(i);
			if(i>=3){
				i=0;
				$('#gif1').removeAttr("stopped");
				 clearInterval(t) 
			} }, num);
		
	}
	
	function cotime(){
		i++;
		console.log(i);
		if(i>=3){
			i=0;
			$('#gif1').removeAttr("stopped");
			
			 clearInterval(t) 
		}
	}
	fab();
	function fab(){
		
		 var num=60.00/sp;
		var ss=0;
		 $("#fab").css( "-webkit-animation-duration",num+"s");
		 $("#fab").css( "-webkit-animation-name","bigg");
		 $("#fab").css( "animation-iteration-count","infinite");
		 //$("#fab").css( "animation-direction","alternate");
		 /*
		t=setInterval(function(){ 
			ss++;
			//var stat=$("#frames["+ss+"]").html();
			var stat=$("#shadow-root").prop("tagName");
			 	console.log(ss+''+stat);
			 }, num);*/
	}
	fth();
	 
	function fth(){
		var num=60/sp;
		 //$("#fth").css( "-webkit-animation-delay",num1+"s");
		 $("#fth").css( "-webkit-animation-duration",num+"s");
		 $("#fth").css( "-webkit-animation-name","bigg");
		 $("#fth").css( "animation-iteration-count","infinite");
		 $("#fth").css( "animation-direction","reverse");
		
	}
	function resume(){
		$('#gif1').removeAttr("stopped");
	}
	$('#aa').changeSpeed = function (delta) {
      
	       
	        $scope.gif.playbackRate = sp;
	      
      }
	
	$("#sty2").click(function () {
		$("#sty1").attr("src","<%=request.getContextPath() %>/gif/1.svg");
		$("#sty2").attr("src","<%=request.getContextPath() %>/gif/2c.svg");
		$("#sty3").attr("src","<%=request.getContextPath() %>/gif/3.svg");
		$("#gifcon").html("<x-gif id='gif' src='<%=request.getContextPath() %>/gif/2_all.gif' bpm='"+sp+"' fill snap  ></x-gif>")
		$("#fth").css("-webkit-animation-play-state","initial");
		$("#fab").css("-webkit-animation-play-state","initial");
	});
	$("#sty3").click(function () {
		$("#sty1").attr("src","<%=request.getContextPath() %>/gif/1.svg");
		$("#sty2").attr("src","<%=request.getContextPath() %>/gif/2.svg");
		$("#sty3").attr("src","<%=request.getContextPath() %>/gif/3c.svg");
	});
	$("#sty1").click(function () {
		$("#sty1").attr("src","<%=request.getContextPath() %>/gif/1c.svg");
		$("#sty2").attr("src","<%=request.getContextPath() %>/gif/2.svg");
		$("#sty3").attr("src","<%=request.getContextPath() %>/gif/3.svg");
	});
	

	
</script>
</body>
</html>