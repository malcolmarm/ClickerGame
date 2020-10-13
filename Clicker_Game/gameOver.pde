void gameOver() {
  miss.pause();
  song.pause();
  background(#006600);
  fill(textFill);
  textAlign(CENTER, CENTER);
  textSize(100);
  text("GAME OVER", 400, 200);
  text("FINAL SCORE", 400, 300);
  text(points, 400, 400);
  text("HI SCORE", 400, 500);
  text(hiScore, 400, 600);
  textSize(50);

  //reset button
  fill(buttonFill);
  tactileRect(100, 600, 200, 100);
  fill(textFill);
  text("RESET", 200, 650);

  //quit button
  fill(buttonFill);
  tactileRect(500, 600, 200, 100);
  fill(textFill);
  text("QUIT", 600, 650);
}
void gameoverClicks() {
  if (mouseX>100 && mouseX<300 && mouseY>600 && mouseY<700) {
    reset();
    song.rewind();
  } else if (mouseX>500 && mouseX<700 && mouseY>600 && mouseY<700) {
    exit();
  }
}
