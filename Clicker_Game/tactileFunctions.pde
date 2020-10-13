void tactileRect(int x, int y, int w, int h) {
  if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {
    stroke(strokeFill);
    strokeWeight(15);
  } else {
    stroke(0);
    strokeWeight(5);
  }
  rect(x, y, w, h);
}

void tactileCirc(int x, float y, int d) {
  if (dist(x, y, mouseX, mouseY)<=d/2) {
    stroke(strokeFill);
    strokeWeight(10);
  } else {
    stroke(0);
    strokeWeight(5);
  }
  circle(x, y, d);
}
