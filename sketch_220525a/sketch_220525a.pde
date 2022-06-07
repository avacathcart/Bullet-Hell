//pallette
color navy = #010038;
//color teal = #2A9D85;
//color mustard = #E9C46A;
color purple = #293A80;
color orange = #FFCE1C;//F39422;
color blue = #537EC5;
//color red = #E76F51;

int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

boolean leftkey, rightkey, space, upkey, downkey;
PFont Retrolight;
PFont cdnumbers;

ArrayList<GameObject> objects;
Starfighter player1;

void setup(){
  size(800, 800);
  mode = INTRO;
  background(0);
  rectMode(CENTER);
  
  objects = new ArrayList<GameObject>();
  player1 = new Starfighter();
  //objects.add
    Retrolight = createFont ("Retrolight.ttf", 100);
    cdnumbers = createFont ("cdnumbers.ttf", 100);

}

void draw() {
   if (mode == INTRO) { 
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  }else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error: " + mode);
  }
}
