class Enemy extends GameObject {
    int cooldown, threshold;

  Enemy() {
    super(random(width), -20, 0, 5, 60, #4742F2, 1);
     threshold = 25;
    cooldown = threshold;
  }
  
  void act() {
    super.act();
     cooldown++;
    if (cooldown >= threshold) {
      objects.add(new EnemyBullet(x,y,0,10, blue));
          objects.add(new EnemyBullet(x, y, 4, 8, blue));
    objects.add(new EnemyBullet(x, y, -4, 8, blue));
      cooldown = 0; 
    }
    
   // shoot
    //objects.add(new EnemyBullet(x, y, 0, 10));
    //objects.add(new EnemyBullet(x, y, 4, 8));
    //objects.add(new EnemyBullet(x, y, -4, 8));
    //objects.add(new EnemyBullet(x, y, -10, 0 ));

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

//at moment of collison add bunch of particles to list for explosion
