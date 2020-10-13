void options() {
  background(background);

  //Target Selector
  fill(textFill);
  textAlign(CENTER, CENTER);
  textSize(50);
  text("SELECT TARGET", 400, 50);
  fill(buttonFill);
  tactileRect(50, 100, 200, 200);
  target1(150, 200, 100);
  fill(buttonFill);
  tactileRect(300, 100, 200, 200);
  target2(400, 200, 100);
  fill(buttonFill);
  tactileRect(550, 100, 200, 200);
  target3(650, 200, 100);

  //Size Slider
  stroke(strokeFill);
  strokeWeight(10);
  fill(buttonFill);
  line(100, 400, 100, 700);
  tactileCirc(100, sliderY, 50);
  targetD = map(sliderY, 400, 700, 50, 250);

  //Target Preview
  if (targetSelect == 0) {
    target1(350, 550, targetD);
  } else if (targetSelect == 1) {
    target2(350, 550, targetD);
  } else if (targetSelect == 2) {
    target3(350, 550, targetD);
  } else {
    println ("Error: targetSelect = " + targetSelect);
  }

  //Back Button 
  fill(buttonFill);
  tactileRect(550, 650, 200, 100);
  fill(textFill);
  textAlign(CENTER, CENTER);
  text("BACK", 650, 700);
}
void optionsClicks() {
  //target select
  if (mouseX>50 && mouseX<250 && mouseY>100 && mouseY<300) {
    targetSelect = 0;
  }

  if (mouseX>300 && mouseX<500 && mouseY>100 && mouseY<300) {
    targetSelect = 1;
  }

  if (mouseX>550 && mouseX<750 && mouseY>100 && mouseY<300) {
    targetSelect = 2;
  }

  //slider
  if (mouseX>75 && mouseX<125 && mouseY>400 && mouseY<700) {
    sliderY = mouseY;
  }
  //back button
  if (mouseX>550 && mouseX<750 && mouseY>650 && mouseY<750) {
    mode = TITLE;
  }
}

void optionsDrag() {
  //slider
  if (mouseX>75 && mouseX<125 && mouseY>400 && mouseY<700) {
    sliderY = mouseY;
  }
}
