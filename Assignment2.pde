import ddf.minim.*;

Minim minim;
AudioPlayer greenSound;
AudioPlayer redSound;
AudioPlayer background;
AudioPlayer sadMusic;
AudioPlayer menuMusic;
int receiverX, receiverY, receiverW, receiverH, receiverS;
boolean up, down;
PImage credits, shooter, redBall, wallpaper, receiver, loserWallpaper, menuWallpaper, menubutton,selectmenu;
int shooterY;
int shooterDirection;
int timer;
ArrayList<Ball> balls;
ArrayList<Ball> hitBalls;
int receiverLocation;
int score = 0;
boolean isPlaying;
int attempts = 2;
int loseCounter = 1;
int stage = 1;

void setup() {
  
  isPlaying = true;
  size(1920, 1080);
  minim = new Minim(this);
  background  = minim.loadFile("background.mp3");
  greenSound = minim.loadFile("green.wav");
  redSound = minim.loadFile("red.wav");
  sadMusic = minim.loadFile("sadmusic.wav");
  menuMusic = minim.loadFile("background.mp3");
  
  rectMode(CENTER);
  receiverX = 1880;
  receiverY = height/2;
  receiverW = 50;
  receiverH = 170;
  receiverS = 10;
  smooth();
  hitBalls = new ArrayList<Ball>();
  balls = new ArrayList<Ball>();
  shooter = loadImage("shooter.png");
  credits = loadImage("credits.png");
  wallpaper = loadImage("wallpaper.jpg");
  receiver = loadImage("receiver.png");
  menubutton = loadImage("Home.png");
  menuWallpaper = loadImage("menu.png");
  selectmenu= loadImage("SelectALevel1.png");
  shooterY = 250;
  shooterDirection = 10;
  /*if (attempts>=0) {
    background.rewind();
    background.play();
  }*/
  /*if (attempts<0) {
    background.pause();
    sadMusic.rewind();
    sadMusic.play();
  }*/
  loserWallpaper = loadImage("loser.jpg");
}

void draw() {
if (stage == 1){
  menu();
}
if (stage ==2){
  background.play();
 play();
}
if (stage == 3){
 selectMenu(); 
}
if (stage==4){
  creditMenu();
}
}





void keyPressed() {
  if (key == 'w' || key =='W') {

    up = true;
  }
  if (key == 's' || key =='S') {


    down = true;
  }
}



void keyReleased() {
  if (key == 'w' || key =='W') {
    up = false;
  }
  if (key == 's' || key =='S') {
    down = false;
  }
}







int moveShooter() {


  if (shooterY > 900) {
    shooterDirection = -10;
    return shooterDirection;
  }
  if (shooterY < 50) {
    shooterDirection = 10;
    return shooterDirection;
  } else 
  return shooterDirection;
}

void decideToShoot() {
  if (timeToShoot()) {

    balls.add(new Ball(greenOrRed()));
  }
}


boolean timeToShoot() {
  if  ((timer %100) == 0) {
    return true;
  }
  return false;
}
int greenOrRed() {
  float colour = random(0, 200);

  return (int)colour;
}