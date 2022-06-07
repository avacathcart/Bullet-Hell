void game() {
  background(navy);
 addObjects();
 gameEngine();
 debug();
  
 player1.show();
 player1.act();
 
 
}

void addObjects() {
   objects.add(new Star());
   
   if(frameCount % 250==0)objects.add(new Enemy());
      if(frameCount % 60==0)objects.add(new Enemy2());
    if(frameCount % 130==0)objects.add(new Enemy3());


}

void gameEngine(){
   int i = 0;
 while (i<objects.size() ){
   GameObject s = objects.get(i);
   s.act();
   s.show();
   if (s.lives == 0){
   objects.remove(i);
 } else{
   i++;
 }
}
}
void debug(){
fill(255);
textFont(cdnumbers);
 textSize(20);
 text(frameRate, 100, 20);
 text(objects.size(), 100, 40);  
  
}


void gameClicks(){
  mode = GAMEOVER;
}
