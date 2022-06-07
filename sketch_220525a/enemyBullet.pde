class EnemyBullet extends GameObject{
  EnemyBullet(float x, float y, float vx, float vy, color c ) {
    super (x, y, vx, vy, 10, c, 1);
   if (offScreen() ) lives= 0;

  }
  
   void act() {
    super.act();
    if (offScreen()) lives= 0;
  }
  
  
}

//need 3 diff enemies
