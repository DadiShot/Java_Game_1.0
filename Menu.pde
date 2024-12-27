void menu() {
  /*background.rewind();
  background.play();*/
  background(menuWallpaper);
  
}
void mousePressed() {
 
  if (stage == 1){
   if ((mouseY < 293 && mouseY > 225)&&(mouseX>630 && mouseX < 1375) ){
     /*background.rewind();
     background.play();*/
     stage = 2;
     
   }
   if ((mouseY < 640 && mouseY >575 )&&( mouseX >630 && mouseX <1375 )){
     exit();
   }
   if ((mouseY<407 && mouseY > 342)&& (mouseX>630 &&mouseX<1375)){
    stage = 3; 
   }
   if ((mouseY<519 && mouseY > 457)&& (mouseX>630 &&mouseX<1375)){
    stage = 4; 
   }
  }
  if (stage == 2){
    if ((mouseY < 70 && mouseY > 20 )&&(mouseX > 20 && mouseX < 70) ){
      background.pause();
      stage =1;
    }
  }
  if (stage == 3){
   if ((mouseY<122 && mouseY >60)&&(mouseX > 26&& mouseX <86)){
     stage = 1;
   }
    if ((mouseY<588 && mouseY >295)&&(mouseX > 130&& mouseX <407)){
     background  = minim.loadFile("background.mp3");
     wallpaper=loadImage("wallpaper.jpg");
     
     //stage = 2;
   }
   if ((mouseY<588 && mouseY >295)&&(mouseX > 530&& mouseX <808)){
     background = minim.loadFile("desert.wav");
     wallpaper= loadImage("desert.jpg");
     
     
     //stage = 2;
   }
   if ((mouseY<588 && mouseY >295)&&(mouseX > 926&& mouseX <1204)){
     background = minim.loadFile("night.mp3");
     wallpaper= loadImage("night.jpg");
     //stage = 2;
   }
   if ((mouseY<588 && mouseY >295)&&(mouseX > 1343&& mouseX <1624)){
     wallpaper= loadImage("snow.jpg");
     background = minim.loadFile("snow.mp3");
     //stage = 2;
   }
  }
  
  if (stage ==4){
   if ((mouseY<122 && mouseY >60)&&(mouseX > 26&& mouseX <86)){
     stage = 1;
   }
   
  }

}