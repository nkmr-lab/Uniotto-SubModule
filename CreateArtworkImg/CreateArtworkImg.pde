
IntList hueList = new IntList();;
void setup(){
  for(int i=0; i<30; i++){
    hueList.append(i);
  }
  hueList.shuffle();
  
  size(500,500);
  colorMode(HSB,30,100,100);
  textAlign(CENTER, CENTER);
  PFont font = createFont("Meiriyo", 28);
  textFont(font);
  textSize(50);
  for(int i=0; i<30; i++){
    int h = hueList.get(i);
    displayGradation(h);
    int year = 1990;
    year = year + i;
    text(year + "年代の曲",250,250);
    save(year + ".png");
  }
}

void displayGradation(int h){
  float randHue = random(0,360);
  for(int i=0; i<height; i++){
    stroke(h, 100, height/300 * i);
    line(0, height-i, width, height-i);
  }
}

void draw(){
  
}
