class Animal{
  int x;
  int y;
  int xspeed;
  int yspeed;
  int size;
  int health;
  
  Animal(int ax, int ay){
    x = ax;
    y = ay;
    xspeed = 5;
    yspeed = 2;
    size = int(random(50,100));
    health = 100;
  }//constructor
  
  void display(){
  }//display
  
  void move(){
  }//move
  
  void moveDestination(int mx, int my){   
  }//moveDestination
  
  void eat(){
  }
}
