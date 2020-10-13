void mouseReleased() {
  if (mode == TITLE) {
    titleClicks();
  } else if (mode == GAMEPLAY) {
    gameplayClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } else if (mode == OPTIONS) {
    optionsClicks();
  }
}

void mouseDragged() {
  if (mode == OPTIONS) {
    optionsDrag();
  }
}
