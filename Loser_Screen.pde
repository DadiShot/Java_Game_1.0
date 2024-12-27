void lose() {
  background.pause();
  background(loserWallpaper);
  if (loseCounter == 1)
    sadMusic.rewind();
  sadMusic.play();
  loseCounter++;
}