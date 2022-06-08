class Starfighter extends GameObject {
  
  int cooldown, threshold;
  
  Starfighter() {
    super(width/2, height/2, 0, 0, 40, orange, 3);
    threshold = 25;
    cooldown = threshold;
  }
  
  void act() {
    super.act();
    //managing guns
    cooldown++;
    if (space && cooldown >= threshold) {
      objects.add(new Bullet());
      cooldown = 0; 
    }
    
    //  int i = 0;
    //while (i< objects.size()) {
    //  GameObject obj = objects.get(i);
    //  if (obj instanceof EnemyBullet) {
    //   if (collidingWith(obj)){
    //     lives--;
    //     obj.lives = 0;
    //   }
    //  }
    //}
       
       //FIGURE OUT HOW  TO PUT LIMITS ON STAR FIGHTER
    //controlling starfighter
    if(upkey == true && y>50) vy = -5; //why doesnt this work
    if (downkey == true && y<750)   vy = 5;
    if (leftkey == true && x>50)   vx = -5;
    if (rightkey == true && x<750)  vx = 5;
    
    if(!upkey && !downkey) vy = vy * 0.9;
    if (!leftkey && !rightkey) vx = vx * 0.9;
   
    if(upkey == true && y<50) upkey = false;
    
    x += vx;
    y += vy;
    
     int i = 0;
    while (i< objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof EnemyBullet) {
       if (collidingWith(obj)){
         lives--;
         obj.lives = 0;
       }
      }
      i++;
    }
    if (lives == 0){
   mode = GAMEOVER;
    }
    
//    if (rightkey == true && x<750) x = x +5;
//if (leftkey == true & x>50) x = x - 5;
  }
  
 //circle based collision
}
