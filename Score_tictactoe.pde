class Score {//initialize Score Class
int[][]score;
Score(){
score = new int[3][3];
}
void scoreReset(){//reset the matrix values to all 0
  for (int i = 0; i < 3; i++) {
  for (int j = 0; j < 3; j++) {
    score[i][j] = 0;
}}}
void replace(int x,int y){//see if the value is =0, if yes then draw X or O
  
  if (mouseX<=900&&mouseY<=900&&score[mouseX/300][mouseY/300]==0)
  {
    player++;//only when the mouse clicked within the 900x900 grid do you increase player
    if (player%2==0){
    score[mouseX/300][mouseY/300]=5;
    strokeWeight(20);
    line(x, y, x+300, y+300);
    line(x+300, y, x, y+300);
    }
    else {
      
      score[mouseX/300][mouseY/300]=1;
      strokeWeight(20);
    circle(x+150,y+150,100);
    }
    
  }
}

void check(){//check if sums and collumns are 15 or 3
  
  for (int i = 0; i < score.length; i++) {//voids to go through the matrix
      int totalRow = 0;
        //For each row calculate the sum and store it in totalRow
        for (int k = 0; k < score[i].length; k++) {
            totalRow += score[i][k];
            if (totalRow == 15) winner();
            if (totalRow == 3) winner();
            
        }
  }

  for (int k = 0; k < score.length; k++) {
        int totalCol = 0;
        //For each column calculate the sum and store it in totalCol
        for (int i = 0; i < score[k].length; i++) {
            totalCol += score[i][k];
            if (totalCol== 15) winner();
            if (totalCol == 3) winner();
             
        }
  }
  
  

}
void checkDiagonalLeft(){//check if diagonals are 15 or 3
 int totalDiagLeft=0;
   for (int k=0;k<score.length;k++){
    
     totalDiagLeft+=score[k][k];
     
   } 
   if (totalDiagLeft==15)winner();
   if (totalDiagLeft==3)winner();
}

void checkDiagonalRight(){
 int totalDiagRight=0;
   for (int k=2;k>=0;k--){
    
     totalDiagRight+=score[k][2-k];
     
   } 
   if (totalDiagRight==15)winner();
   if (totalDiagRight==3)winner();
}
void winner(){// if the winner is odd or even then determine if the winner is X or O
  //check whether player is odd or even to determine what shows up as who wins
  if (player%2==0)
  {text("x won",1000,400);
  points1++;
 thereisWinner=true;
  }
  
  if (player%2==1)
  {text("o won",1000,400);
  points2++;
  thereisWinner=true;

  }
 
}

void tie(){// if the two tie then its a tie. 
 if (player>=9&&thereisWinner==false)
 {text("It's a tie",1000,400);
 itsaTie=true;}
}

}
