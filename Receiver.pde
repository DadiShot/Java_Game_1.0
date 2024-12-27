void drawReceiver() {
  
  image (receiver, receiverX, receiverY, receiverW, receiverH);
}
void drawMenu(){
  image(menubutton, 20,20, 50,50);
}
void moveReceiver() {
  if (up) {
    if (receiverY > 10)
      receiverY -= receiverS;
  }
  if (down) {
    if (receiverY < 900)
      receiverY += receiverS;
  }
}