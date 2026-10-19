// Dear Data 100 - everything I eat and drink
// Green = I cooked it, red = I bought it, blue = someone gave me it.
// Bigger circle = cost more. Ring = I regretted it.

ArrayList<Meal> meals;

void setup() {
  size(900, 600);

  meals = new ArrayList<Meal>();

  String[] lines = loadStrings("meals.csv");

  // start at 1 so we skip the header row
  for (int i = 1; i < lines.length; i++) {
    String[] tokens = split(lines[i], ',');

    String place = tokens[2];
    float cost = float(tokens[4]);
    int after = int(tokens[5]);

    meals.add(new Meal(place, cost, after));
  }

  println("Loaded " + meals.size() + " meals");
}

void draw() {
  background(245, 243, 238);

  for (int i = 0; i < meals.size(); i++) {
    float x = 90 + (i % 10) * 80;   // 10 across
    float y = 90 + (i / 10) * 55;   // then start a new line

    meals.get(i).draw(x, y);
  }
}
