<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script>

if ('registerElement' in document
  && 'createShadowRoot' in HTMLElement.prototype
  && 'import' in document.createElement('link')
  && 'content' in document.createElement('template')) {
  // We're using a browser with native WC support!
} else {
  document.write('<script src="https:\/\/cdnjs.cloudflare.com/ajax/libs/polymer/0.3.4/platform.js"><\/script>')
}
</script>

<link rel="import" href="./x-gif-gh-pages/dist/x-gif.html">
<script src="./x-gif-gh-pages/dist/platform.js"></script>
  
</head> 
<script>


</script>
<body>


<div id="res"></div>
<div id="ts"></div>
<input type='button' id="ff" value="fast" onclick="go();"/>
<input type='button' value="colck" onclick="clock();"/>
<input type='button' value="stop" onclick="stop();"/>
<input type='button' value="resume" onclick="resume();"/>

<a id ='aa' href='changeSpeed(0.1)'>123</a>
<x-gif id='gif1' src='http://i.imgur.com/iKXH4E2.gif' bpm='6' ></x-gif>;
<script>
var sp=0.2;
$("#button").click(function(){
	
});
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
	var i=0;
	var t;
	function stop(){
		$('#gif1').attr("stopped",'true');
		 t=setInterval(function(){ 
			 i++;
			 console.log(i);
			if(i>=3){
				i=0;
				$('#gif1').removeAttr("stopped");
				 clearInterval(t) 
			} }, 1000);
		
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
	function resume(){
		$('#gif1').removeAttr("stopped");
	}
	$('#aa').changeSpeed = function (delta) {
      
	       
	        $scope.gif.playbackRate = sp;
	      
      }
</script>
</body>
</html>