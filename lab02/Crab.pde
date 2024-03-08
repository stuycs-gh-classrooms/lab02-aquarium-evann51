class Crab extends Animal{
  Crab(int ax, int ay){
    super(ax, ay);
    xspeed = int(random(1,6))*int(pow(-1, int(random(1,3))));
    yspeed = 2;
  }//contructor
  
  void move(){
    if(x<0){
      x = 0;
      xspeed = -xspeed;
    }
    else if(x>width-size){
      x = width-size;
      xspeed = -xspeed;
    }
    else if(y>height-size){
      y = height-size;
      yspeed = -yspeed;
    }
    else if(y<height-30-size){
      y = height-30-size;
      yspeed = -yspeed;
    }
    x+=xspeed;
    y+=yspeed;
  }//move
  
  
  void eat(){
    for(int l = 0;l<t.animals.size();l++){
      Animal a = t.animals.get(l);
      if(dist(x,y,a.x,a.y)<50){
        a.health -=10;
         health+=15;
         if(health>100){
           size+=2;
           health -= 10;
         }
         if(size>200){
           health -=60;
         }
      }
    }
  }
  void display(){
    image(crab,x,y,size,size);
  }//display
}
