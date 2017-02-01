PFont f;
ArrayList<NumberRain> numbers;

void setup() {
  //size(600, 600);
  fullScreen();

  f = createFont("Arial", 16, true); 
  numbers = new ArrayList();

  frameRate(20);

  for (int i = 0; i < width; i+=15)
    numbers.add(new NumberRain(i, 0));
}

void draw() {
  background(0);
  for (int i = 0; i < numbers.size(); i++) {
    numbers.get(i).update();
  }
}