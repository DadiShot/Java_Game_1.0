class Ball {
  //global variables
  float x = 300 ;
  float y = shooterY + 50 ;
  float speed = 10;
  float colourGreen;
  float colourRed;
  float colourBlue = 0;
  float location = x*y;
  boolean notHit;
  //constructor
  Ball(int colour) {
    notHit = true;
    if (colour>51 && colour < 200) {
      this.colourGreen = 255;
      this.colourRed = 0;
      //fill(0,255,0);
    }
    if (colour<50 && colour >0)
      this.colourGreen = 0;
    this.colourRed = 255;
    //fill(255,0,0);


    ellipse(this.x, this.y, 20, 20);
  }

  //Functions
  void run() {
    display();  
    moveBall();
    ballSound();
    //drawScore(); Feature available in the final product.
  }
  void moveBall() {
    if (this.x < 800) {
      this.x += speed+20;
    } else
      this.x += speed;
  }
  void display() {
    if (isHit()&& this.x > 1700) {
      return;
    } else
      fill(this.colourRed, this.colourGreen, colourBlue);
    ellipse(this.x, this.y, 45, 45);
  }
  void ballSound() {
    if (this.colourGreen == 255 && (this.x< receiverX +10 && this.x > receiverX -10)&& ((this.y > receiverY - 100)&&(this.y < receiverY + 165))) {
      greenSound.rewind();
      greenSound.play();
    }
    if (this.colourGreen == 0 && (this.x< receiverX +10 && this.x > receiverX -10)&& ((this.y > receiverY - 100)&&(this.y < receiverY + 165))) {
      redSound.rewind();
      redSound.play();
      --attempts;
    }
  }
  void changeColour() {
    this.colourRed = 255;
    this.colourGreen = 128;
    this.colourBlue = 0;
  }
  boolean isHit() {

    if ((this.x > receiverX) && ((this.y > receiverY - 100)&&(this.y < receiverY + 165))) {


      return true;
    } else 

    return false;
  }
  // boolean isHitOnce(){
  //  if (((this.x > receiverX) && ((this.y > receiverY - 100)&&(this.y < receiverY + 165))) && (notBeenHit()== true)){
  //   this.notHit = false;
  //  
  // return true;


  // }

  // return false;
  // }
  boolean notBeenHit() {
    return this.notHit;
  }

  boolean isGreen() {
    if (this.colourGreen == 255)
      return true; 
    return false;
  }
  boolean isRed() {
    if (this.colourRed == 255)
      return true;
    return false;
  }

  void drawScore() {

    if ((this.x > receiverX) && ((this.y > receiverY - 100)&&(this.y < receiverY + 165))) {
      ++score;
    }
    fill(250); 
    text("Balls Shot:", 300, 100);
    text(score, 650, 100);
  }
}