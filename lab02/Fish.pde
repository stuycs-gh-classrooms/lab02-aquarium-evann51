class Fish extends Animal{
  Fish(int fx,int fy){
    super(fx,fy);
    xspeed = int(random(1,6))*int(pow(-1, int(random(1,3))));
    
  }//constructor
  
  void display(){
    image(fish1,x,y,size,size);
  }//display
  void eat(){
    for(int i = 0;i<foods.size();i++){
      Food f = foods.get(i);
      if(dist(x,y,f.x,f.y)<=f.size){
        f.size-=1;
        if(f.size<5){
          foods.remove(f);
        }
      }
    }
  }
  void move(){
    if(x<0){
      x = 0;
      xspeed = -xspeed;
    }
    else if(x>width-size){
      x = width-size;
      xspeed = -xspeed;
    }
    else if(y<0){
      y = 0;
      yspeed = -yspeed;
    }
    else if(y>height-30-size){
      y = height-size-30;
      yspeed = -yspeed;
    }
    x+=xspeed;
    y+=yspeed;
  }//move
  
}
