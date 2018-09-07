<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<!DOCTYPE html>

<html>
<head>


<meta charset="UTF-8" name="viewport"
	content="width=device-width,initial-scale=0.5">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/bootstrap/css/bootstrap-responsive.min.css">
<script src="<%=request.getContextPath() %>/bootstrap/js/bootstrap.min.js"></script>
<link href="<%=request.getContextPath() %>/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />


<link rel="import" href="<%=request.getContextPath() %>/x-gif-gh-pages/dist/x-gif.html">
<script src="<%=request.getContextPath() %>/x-gif-gh-pages/dist/platform.js"></script>
<style>
#gif{
		max-width:60%;
			-webkit-align-items: center;
            align-items: center;
			-webkit-justify-content: center;
            justify-content: center; 
            background-position: 50% 50%;
            
}
x-gif{
			-webkit-align-items: center;
            align-items: center;
			-webkit-justify-content: center;
            justify-content: center; 
            background-position: 50% 50%;
}
</style>
</head>
<script>
	
</script>
<body>

	<div id="ts"></div>
	<div style="display: -webkit-flex; display: flex;">

		
		<img id="back" width="30px;" height="30px;" src="<%=request.getContextPath() %>/gif/back.svg"
			style="align-self: center;margin-left:15%;">
		<div id='gif' style="display: -webkit-flex; display: flex;">	
		<x-gif  src='<%=request.getContextPath() %>/gif/breath1_吸.gif'  fill ></x-gif>
		</div>
		<img id="next" width="30px;" height="30px;" src="<%=request.getContextPath() %>/gif/next.svg"
			style="align-self: center;"><br />
		
	</div>

	<br />
	<div id="res"></div>
	<table>
		<tr>
			<td> 吸氣<input id="absorb" type='text' value=4 /></td>
			<td> 吐氣<input id="threw" type='text' value=4 /></td>
		</tr>
		<tr>
			<td> 暫停<input id="stop" type='text' value=1 /></td>
		</tr>
		
	</table>
<input type='button' class="btn btn-block" value="test"
		onclick="start();" />
	<br />
<input type='button' value="resume" onclick="resume();" />
<script>
$(document).ready( function() {
	start();
});
	var sp = 10,absp=4,thsp=4,stt=1;
	
	var i = 0;
	var charr=0;
	var ani = [ "<%=request.getContextPath() %>/gif/breath1_吸.gif", "<%=request.getContextPath() %>/gif/breath1_吐.gif" ];
	var ani2 = [ "<%=request.getContextPath() %>/gif/breath2_吸.gif", "<%=request.getContextPath() %>/gif/breath2_吐.gif" ];
	$("#next").click(function() {

		i++;
		console.log(i);
		charr=i % 2;
		var ttt=$('#gif>x-gif').attr("src");
		if(ttt.indexOf("1_吸"))
		  $('#gif>x-gif').attr("src", ani2[0]);
		else if(ttt.indexOf("1_吐"))
		  $('#gif>x-gif').attr("src", ani2[1]);
		else if(ttt.indexOf("2_吸"))
			$('#gif>x-gif').attr("src", ani[0]);
		else 
			$('#gif>x-gif').attr("src", ani[1]);
	});
	$("#back").click(function() {
		i--;
		if (i < 0) {
			i = -i;
		}
		charr=i % 2;
		var ttt=$('#gif>x-gif').attr("src");
		console.log(ttt);
		if(ttt.indexOf("1_吸"))
		  $('#gif>x-gif').attr("src", ani2[0]);
		else if(ttt.indexOf("1_吐"))
		  $('#gif>x-gif').attr("src", ani2[1]);
		else if(ttt.indexOf("2_吸"))
			$('#gif>x-gif').attr("src", ani[0]);
		else 
			$('#gif>x-gif').attr("src", ani[1]);
		
	});
	$("#absorb").change(function() {
		
		sp = $("#absorb").val();
		console.log(sp)
		absp=sp;
		
		//$('#gif').attr("bpm", sp*60/22.5);
		
		
	});
	$("#threw").change(function() {
		
		sp = $("#threw").val();
		thsp=sp;
		
	//	$('#gif').attr("bpm", thsp);
		
		
	});
	$("#stop").change(function() {
		
		sp = $("#stop").val();
		stt=sp;
		
	//	$('#gif').attr("bpm", thsp);
		
		
	});
	function defult() {

		sp = "6.6";
		$('#gif').attr("bpm", sp);

	};
	function clock() {

		var ttt = "<x-gif id='gif' src='http://i.imgur.com/iKXH4E2.gif' speed="+sp+"   ></x-gif>";

		$("#res").html(ttt);

	};

	function go() {
		sp++;
		var ts = "<div speed="+sp+" >" + sp + " </div>"
		$("#ts").html(ts);
		console.log(sp);
		$('#gif').attr("speed", sp)

		/*
		sp+=0.5;
		var ttt="<x-gif  src='http://i.imgur.com/iKXH4E2.gif' speed="+sp+" synced></x-gif>"
		$("#res").html(ttt);
		console.log(sp);
		 */
	}

	
	/*
	function fast(){
		
	    	sp=sp*1.2;
	    	$("#res").html("spped:"+sp);
	    	$('#gif').attr("bmp",sp);
	  }*/
	  var abs=4000;
	  var t;
	function start(){
		abs=absp*1000;
		  //$('#gif').attr("src", './gif/breath1_吸.gif');
		  if(charr==0)
		  	$('#gif').html("<x-gif src='"+ani[0]+"' speed='"+4/absp+"' fill ></x-gif>");
		  else 
			  $('#gif').html("<x-gif src='"+ani2[0]+"' speed='"+4/absp+"' fill ></x-gif>");
		  
			t = setTimeout (function() {
					
					stop();
					
				}
			, abs);
			
	  }  
	var st=1000;
	
	function stop() {
		st=stt*1000;
		$('#gif > x-gif').attr("stopped",'true');
		
		t = setTimeout(function() {
			
			threw();
			    
			}, st);
		
	}
	function threw(){
		abs=thsp*1000;
		if(charr==0)
		 	$('#gif').html("<x-gif src='"+ani[1]+"' speed='"+4/thsp+"' fill ></x-gif>");
		else
			$('#gif').html("<x-gif src='"+ani2[1]+"' speed='"+4/thsp+"' fill ></x-gif>");	
		
		t = setTimeout(function() {
			     
			     start();
			}, abs);
	}
	function cotime() {
		i++;
		console.log(i);
		if (i >= 3) {
			i = 0;
			$('#gif1').removeAttr("stopped");

			clearInterval(t);
		}
	}
	function resume() {
		$('#gif1').removeAttr("stopped");
	}
	$('#aa').changeSpeed = function(delta) {

		$scope.gif.playbackRate = sp;

	}
</script>
</body>
</html>