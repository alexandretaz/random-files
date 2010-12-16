const FPS = 30;
var x = 400;
var y = 300;
var canvas = null;
var context2D = null;

var Plane = function(name){
    this.name = name;
    this.x = Math.random() * 800 
    this.y = Math.random() * 600
    this.xDirection = Math.random() * 10 -5 ;
    this.yDirection = Math.random() * 10 -5;
    this.image = new Image();
    this.image.src = this.image.src = "http://javascript-tutorials.googlecode.com/files/jsplatformer1-smiley.jpg";
}

plane = new Plane('you');
var list = [plane]

window.onload = init;


function angular_coeficient(x1,x2,y1,y2){
    return (x2-x1)/(y2-y1)
}

function distance(x1,x2,y1,y2){
    return  Math.sqrt(Math.pow( (x2-x1), 2), Math.pow( (y2 - y1 ), 2))
}

function s_x(x1,x2,d){
    return (x2 - x1)/d
}

function c_x(y1,y2,d){
    return (y2 - y1)/d
}

function init()
{
	canvas = document.getElementById('canvas');
	context2D = canvas.getContext('2d');
	setInterval(draw, 1000 / FPS);
}

function draw()
{
    context2D.clearRect(0, 0, canvas.width, canvas.height);
    var status_string=''
//    $('#canvas').mousemove( function(e) {   })
    for (var i in list){
     
     status_string +=  list[i].name+' '+ list[i].x +' '+ list[i].y + ' '+ list[i].xDirection + ' ' + list[i].yDirection + " -- " 
     document.getElementById('status').textContent = status_string
     }

    for(var i in list){
        $('#canvas').click( function(e){
                //                $('#canvas').mousemove( function(e) { 

                //              list[i].xDirection = c_x(list[i].y , e.pageY , distance( list[i].x, e.pageX, list[i].y, e.pageY ));
                //              list[i].yDirection = s_x(list[i].x , e.pageX , distance( list[i].x, e.pageX, list[i].y, e.pageY )); 

            if (e.pageX > list[i].x){

                if (list[i].xDirection >= 0){
                    list[i].xDirection =  list[i].xDirection * 1
                }else{
                    list[i].xDirection =  list[i].xDirection * -1
                }


            }else{
                if (list[i].xDirection >= 0){
                    list[i].xDirection =  list[i].xDirection * -1
                }else{
                    list[i].xDirection =  list[i].xDirection * 1
               } 

            }


            if (e.pageY > list[i].y){

                if (list[i].yDirection >= 0){
                    list[i].yDirection =  list[i].yDirection * 1
                }else{
                    list[i].yDirection =  list[i].yDirection * -1
                }


            }else{
                if (list[i].yDirection >= 0){
                    list[i].yDirection =  list[i].yDirection * -1
                }else{
                    list[i].yDirection =  list[i].yDirection * 1
               } 

            }

        });

        context2D.drawImage(list[i].image, list[i].x, list[i].y);

        list[i].x += 1 * list[i].xDirection;
        list[i].y += 1 * list[i].yDirection;
        if (list[i].x >= 800)
        {
            list[i].x = 800;
            list[i].xDirection = -1;
        }
        else if (list[i].x <= 0)
        {
            list[i].x = 0;
            list[i].xDirection = 1;
        }

        if (list[i].y >= 600)
        {
            list[i].y = 600;
            list[i].yDirection = -1;
        }
        else if (list[i].y <= 0)
        {
            list[i].y = 0;
            list[i].yDirection = 1;
        }
    }
}
