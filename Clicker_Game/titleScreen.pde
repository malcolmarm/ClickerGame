  void titleScreen() {
  background(background);
  textAlign(CENTER, CENTER);
  song.play();

  //Title Card
  fill(textFill);
  textSize(100);
  text("Clicker Game", 400, 200);

  //Start Button
  fill(buttonFill);
  tactileRect(300, 650, 200, 100);
  textSize(50);
  fill(textFill);
  text("START", 400, 700);

  //Options Button
  fill(buttonFill);
  tactileRect(650, 50, 100, 100);
  image(gear, 650, 50, 100, 100);
}

void titleClicks() {
  if (mouseX>300 && mouseX<500 && mouseY>650 && mouseY<750) {
    mode = GAMEPLAY;
  }
  if (mouseX>650 && mouseX<750 && mouseY>50 && mouseY<150) {
    mode = OPTIONS;
  }
}
