class Enemy3 extends GameObject {
  int cooldown, threshold;

  Enemy3() {
    super(random(width), -20, 0, 5, 20, purple, 1);
     threshold = 25;
    cooldown = threshold;
  }
  
  void act() {
    super.act();
     cooldown++;
    if (cooldown >= threshold) {
      objects.add(new EnemyBullet(x,y, 11,0, purple));
          objects.add(new EnemyBullet(x, y, -11, 0, purple));
      cooldown = 0; 
    }
    
    //coliisions
     int i = 0;
    while (i< objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet) {
       if (collidingWith(obj)){
         lives--;
         obj.lives = 0;
       }
      }
      i++;
    }
    //remove if goes off screen
    if (offScreen()) lives = 0; 
  }
  
  
}
