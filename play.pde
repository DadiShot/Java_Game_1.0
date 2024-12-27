void play(){
  
  
   if (attempts>=0) {
    
    receiverLocation = receiverX * receiverY;
    
    background(wallpaper);
    drawReceiver();
    moveReceiver();
    drawMenu();
    image(shooter, 50, shooterY += moveShooter(), 250, 250);

    timer += 1;
    decideToShoot();
    for (Ball ball : balls) {
      ball.run();
    }
  } else
    lose();
}