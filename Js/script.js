var i=0;
function main(){
	window.status(i+"  "+document.documentElement.offsetWidth); 
	document.write("<img src='ball.jpg' style='position: absolute; left: "+i+"px; top: "+i+"px;'>");
	if (i > 1000){
		i = 0;
	}
	i = i + 10;
} 

