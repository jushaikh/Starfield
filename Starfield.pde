Good[]thing = new Good[800];
Evil[]ting = new Evil[800];

void setup(){
  size(1100, 800);
  for (int i = 0; i < thing.length; i++){
    thing[i] = new Good();
  }
  //for (int i = 0; i < thing.length; i++){
    thing[0] = new GoodOddBall();
  //}
  
  for (int i = 0; i < ting.length; i++){
    ting[i] = new Evil();
  }
  //for (int i = 0; i < ting.length; i++){
    ting[0] = new EvilOddBall();
  //}  
}

void draw(){
  background(241, 251, 251);
  
  for (int i = 0; i < thing.length; i++){
    thing[i].move();
    thing[i].show(); 
  }
  
  for (int i = 0; i < ting.length; i++){
    ting[i].move();
    ting[i].show(); 
  }
}

void mousePressed(){
  for (int i = 0; i < thing.length; i++){
    thing[i].setX(300);
    thing[i].setY(400);
  }
  for (int i = 0; i < ting.length; i++){
    ting[i].setX(950);
    ting[i].setY(400);
  }
}



class Good{ 
  double myX, myY, mySpeed, myAngle;
  int myColor; 
  Good(){
    myX = 300; 
    myY = 400; 
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myColor = color((int)(Math.random()*155+100), 0, 0);
  }
  public void setX(int x){
    myX = x; 
  }
  public void setY(int y){
    myY = y; 
  }
  void move(){
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
  void show(){
    fill (myColor);
    ellipse((float)myX, (float)myY, 8, 8);
  }
}

class GoodOddBall extends Good{
  GoodOddBall(){
    myX = 300; 
    myY = 400; 
    myAngle = Math.random()*2*PI;
    mySpeed = Math.random()*10;
  }
  void show(){
    textSize(15);
    fill (myColor); 
    text("Boom", (float)myX, (float)myY);
  }
}

class Evil{
  double myX, myY, mySpeed, myAngle;
  int myColor; 
  Evil(){
    myX = 950; 
    myY = 400; 
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myColor = color(0, 0, (int)(Math.random()*155+100));
  }
  public void setX(int x){
    myX = x; 
  }
  public void setY(int y){
    myY = y; 
  }
  void move(){
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
  void show(){
    fill (myColor);
    ellipse((float)myX, (float)myY, 8, 8);
  }
}

class EvilOddBall extends Evil{
  EvilOddBall(){
    myX = 300; 
    myY = 400; 
    myAngle = Math.random()*2*PI;
    mySpeed = Math.random()*10;
  }
  void show(){
    textSize(15);
    fill (myColor); 
    text("Boom", (float)myX, (float)myY);
  }
}

