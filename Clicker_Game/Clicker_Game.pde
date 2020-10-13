import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Malcolm Armstrong
//1-1B
//Oct. 6, 2020

//Clicker Game 

//mode framework
int mode; 
final int TITLE = 1;
final int GAMEPLAY = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;
final int OPTIONS = 5;

//colour variables
color background = #AAFF66;
color textFill = #AAAA00;
color buttonFill = #FFFF00;
color strokeFill = #008800;


//target variables
float targetX;
float targetY;
float targetVX;
float targetVY;
float targetD;
int targetSelect;

//gameplay variables
int points;
int lives;
int difficultyX;
int difficultyY;
int startVX;
int startVY;
int hiScore;

//sound variables
Minim minim;
AudioPlayer hit;
AudioPlayer miss;
AudioPlayer gameover;
AudioPlayer song;

//other variables
PImage gear;
float sliderY;


void setup() {
  size(800, 800);
  difficultyX = 1;
  difficultyY = 1;
  startVX = 1;
  startVY = 2;
  targetD = 50;
  reset();
  targetSelect = 0;
  sliderY = 400;

  //minim
  minim = new Minim(this); 
  hit = minim.loadFile("hit.wav");
  miss = minim.loadFile("miss.wav");
  gameover = minim.loadFile("gameover.wav");
  song = minim.loadFile("song.mp3");

  //images
  gear = loadImage("gear.png");
}

void draw() {
  if (mode == TITLE) {
    titleScreen();
  } else if (mode == GAMEPLAY) {
    gameplay();
  } else if (mode == PAUSE) {
    pauseScreen();
  } else if (mode == GAMEOVER) {
    gameOver();
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Error: mode = " + mode);
  }
}
