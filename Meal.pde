// One Meal is one thing I ate or drank.

class Meal {

  String place;   // C cooked, B bought, G given
  String kind;    // M meal, S snack, D cold drink, H hot drink
  float cost;     // roughly what it cost me

  Meal(String place, String kind, float cost) {
    this.place = place;
    this.kind = kind;
    this.cost = cost;
  }

  // home food is green, bought food is red, free food is blue
  color colour() {
    if (place.equals("C")) {
      return color(100, 170, 110);
    }
    if (place.equals("B")) {
      return color(215, 95, 85);
    }
    return color(90, 145, 200);
  }

  // the more it cost, the bigger the circle
  float dotSize() {
    return 12 + cost * 3;
  }

  void draw(float x, float y) {
    noStroke();
    fill(colour());
    circle(x, y, dotSize());
  }
}
