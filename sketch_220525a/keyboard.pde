void keyPressed() {
  if (keyCode == UP ) upkey = true;
  if (keyCode == DOWN ) downkey = true;
  if (keyCode == RIGHT ) rightkey = true;
  if (keyCode == LEFT) leftkey = true;
  if (key == ' ') space = true;
}

void keyReleased() {
  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false;
  if (keyCode == RIGHT ) rightkey = false;
  if (keyCode == LEFT) leftkey = false;
  if (key == ' ') space = false;
}
