function init(){
	try{
	canvas = document.getElementById('canvas');
	ctx = canvas.getContext('2d');
	setInterval(draw, 10);
	}catch(err){
	}
	
}

function draw(){
	ctx.clearRect(0,0,1024,768);
	lingrad = ctx.createLinearGradient(0,0,0,1000);
	lingrad.addColorStop( 0,"#00ABEB");
	lingrad.addColorStop(0.5, "#fff");
	lingrad.addColorStop(0.5, '#66CC00');
	lingrad.addColorStop(1, '#fff');

	ctx.fillStyle = lingrad;

	ctx.fillRect(0,0,1024,768);
	ctx.drawImage( image, x,300 )
	ctx.rotate(1.5)
	if( x < 1024){
		x= x+1
	}
	else{
		x=0
	}
       	
}
var ctx=null;
var lingrad=null;
var canvas=null;

var image = new Image();
image.src = '/Users/liquuid/Desktop/images.jpeg'
var x=image.width * -1
window.onload = init;

