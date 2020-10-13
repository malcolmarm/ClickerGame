void reset() {
  mode = TITLE;
  points = 0;
  lives = 3;
  targetVX = startVX;
  targetVY = startVY;
  targetX = 400;
  targetY = 400;
  if (difficultyX<0) {
    difficultyX = difficultyX * -1;
  }
  if (difficultyY<0) {
    difficultyY = difficultyY * -1;
  }
}
