// Dear Data 100 - everything I eat and drink
// Each row is one day. Each circle is one thing I ate or drank.

ArrayList<Meal> meals;

void setup() {
  size(1000, 700);

  meals = new ArrayList<Meal>();

  String[] lines = loadStrings("meals.csv");

  int row = -1;          // goes up by 1 every new day, so the first day is row 0
  int col = 0;           // how far along the row we are
  String lastDate = "";  // the date on the line before

  // start at 1 so we skip the header row
  for (int i = 1; i < lines.length; i++) {
    String[] tokens = split(lines[i], ',');

    String date = tokens[0];
    String place = tokens[2];
    String kind = tokens[3];
    float cost = float(tokens[4]);

    // new date? start a new row
    boolean newDay = !date.equals(lastDate);
    if (newDay) {
      row = row + 1;
      col = 0;
      lastDate = date;
    }

    float x = 140 + col * 65;
    float y = 80 + row * 36;

    meals.add(new Meal(date, place, kind, cost, x, y, newDay));

    col = col + 1;
  }
}

void draw() {
  background(245, 243, 238);

  drawKey();

  for (int i = 0; i < meals.size(); i++) {
    meals.get(i).draw();
  }
}

// the key along the top, so people know what the colours mean
void drawKey() {
  noStroke();
  textSize(14);

  fill(100, 170, 110);
  circle(150, 30, 14);
  fill(215, 95, 85);
  circle(280, 30, 14);
  fill(90, 145, 200);
  circle(410, 30, 14);

  fill(60);
  text("I cooked it", 165, 35);
  text("I bought it", 295, 35);
  text("family made it", 425, 35);
  text("bigger circle = cost more", 580, 35);
}
