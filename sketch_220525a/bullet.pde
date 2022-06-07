class Bullet extends GameObject {
    int cooldown, threshold;

  Bullet() {
    super(player1.x, player1.y, 0, -10, 5, orange, 1);
  }
  
  void act() {
    super.act();
    if (offScreen()) lives= 0;
  }
  
  
}
