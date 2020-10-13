void gameplay() {
  //UI
  background(background);
  textAlign(LEFT, TOP);
  fill(textFill);
  textSize(50);
  text("POINTS = " + points, 0, 0);
  text("LIVES = " + lives, 0, 50);

  //Pause Button
  fill(buttonFill);
  tactileRect(700, 50, 50, 50);
  fill(#006000);
  stroke(#006000);
  strokeWeight(1);
  rect(710, 60, 10, 30);
  rect(730, 60, 10, 30);

  //Target
  strokeWeight(5);
  if (targetSelect == 0) {
    target1(targetX, targetY, targetD);
  } else if (targetSelect == 1) {
    target2(targetX, targetY, targetD);
  } else if (targetSelect == 2) {
    target3(targetX, targetY, targetD);
  }
  targetX = targetX + targetVX;
  targetY = targetY + targetVY;

  //Bounce
  if (targetX>=width-targetD/2 || targetX<=0+targetD/2) {
    targetVX = targetVX * -1;
    difficultyX = difficultyX * -1;
  }
  if (targetY>=height-targetD/2 || targetY<=0+targetD/2) {
    targetVY = targetVY * -1;
    difficultyY = difficultyY * -1;
  }
}
void gameplayClicks() {
  if (dist(targetX, targetY, mouseX, mouseY)<targetD/2) {
    points = points+1;
    hit.rewind();
    hit.play();
    targetVX = targetVX * 1.1;
    targetVY = targetVY * 1.1;
  } else if (mouseX>700 && mouseX<750 && mouseY>50 && mouseY<100) {
    mode = PAUSE;
  } else {
    miss.rewind();
    miss.play();
    lives = lives-1;
    if (lives <= 0) {
      mode = GAMEOVER;
      gameover.rewind();
      gameover.play();
      if (points > hiScore) {
        hiScore = points;
      }
    }
  }
}
