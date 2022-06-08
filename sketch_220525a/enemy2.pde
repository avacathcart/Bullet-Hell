class Enemy2 extends GameObject {
    int cooldown, threshold;

  Enemy2() {
    super(random(width), -20, 0, 5, 40, 255, 1);
     threshold = 23;
    cooldown = threshold;
  }
  
  void act() {
    super.act();
     cooldown++;
    if (cooldown >= threshold) {
           fill(255);
      objects.add(new EnemyBullet(x,y,0,10, 255));
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
