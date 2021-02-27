//Bao To
//Advanced CompSci
//TIC TAC TOE PROJECT
PFont f;
int player;
//DrawShape newShape;
Score score;
int points1;
int points2;
boolean thereisWinner=false;
boolean itsaTie=false;
void reset(){//redraw the GUI,call scoreReset and reset the game
 
  score.scoreReset();
  fill(255);
  rect(0,0,1200,900);
  rect(0,0,900,900);
  fill(0);
  line(300, 0, 300, 900);
  line(600, 0, 600, 900);
  line(900, 0, 900, 900);
  line(0, 300, 900, 300);
  line(0, 600, 900, 600);
  line(0, 900, 900, 900);
  fill(0);
  player=0;
  strokeWeight(5);
  fill(0);
  fill(255);
  rect(930, 100, 200, 100);
  rect(930, 500, 200, 100);
  fill(0);
  text(points1, 1000,175);
  text(points2, 1000,565);
  strokeWeight(20);
  fill(255);
  strokeWeight(0);
  rect(950,350,200,100);
  strokeWeight(20);
  fill(0);
  thereisWinner=false;
  itsaTie=false;
  text("player 1", 930, 250);
  text("player 2", 930, 650);
  text("space to restart",930,770);
}
void setup() {//set up fonts, stroke and text
  size(1200, 900);
  strokeWeight(20);
  f=createFont("Arial", 100, true);
  textFont(f, 30);
  
  
  
 // newShape=new DrawShape();
 score = new Score();
 score.scoreReset();
  reset();
  
}

void draw() {
}
/*void drawTool(int x, int y) {
  if (player%2==0) {
    strokeWeight(20);
    line(x, y, x+300, y+300);
    line(x+300, y, x, y+300);
  }
   else {
    strokeWeight(20);
    circle(x+150,y+150,100);
  }
}*/

void mouseClicked() {//void mouseClicked
  if (thereisWinner ==false&&itsaTie==false){
    
   //Call all the functions from score class
  score.replace(mouseX/300*300,mouseY/300*300);
  score.check();
  score.checkDiagonalRight();
  score.checkDiagonalLeft();
  score.tie();
  println(points1);
}}

void keyPressed() {// if space bar is pressed, reset the game
  if (key==' ')reset();
}
