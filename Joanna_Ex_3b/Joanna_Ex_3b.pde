int x = 100;
int y = 100;

void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  while (x < 500) {
    strokeWeight(5);
    line(x, 0, x, 500); 
    x += 100;
  }
  while (y < 500) {
    strokeWeight(5);
    line(0, y, 500, y);
    y += 100;
  }
  // when a key is press then the boxes will change random colors
  if (keyPressed) {
    for (x=0; x<500; x+=100) {
      for (y=0; y<500; y+=100) {
        fill(random(0, 255), random(0, 255), random(0, 255));
        rect(0+x, 0+y, 100, 100);
      }
    }
  }
}