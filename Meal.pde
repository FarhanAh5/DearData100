// One Meal is one thing I ate or drank.

class Meal {

  String date;      // like 19/10
  String place;     // C cooked, B bought, G given
  String kind;      // M meal, S snack, D cold drink, H hot drink
  float cost;       // roughly what it cost me
  float x;          // where it goes on screen
  float y;
  boolean newDay;   // true if this is the first thing I had that day

  Meal(String date, String place, String kind, float cost, float x, float y, boolean newDay) {
    this.date = date;
    this.place = place;
    this.kind = kind;
    this.cost = cost;
    this.x = x;
    this.y = y;
    this.newDay = newDay;
  }

  // home food is green, bought food is red, family food is blue
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
    return 8 + cost * 2;
  }

  void draw() {
    // the first thing each day also writes the date at the start of the row
    if (newDay) {
      fill(60);
      textSize(14);
      text(date, 40, y + 5);
    }

    noStroke();
    fill(colour());
    circle(x, y, dotSize());
  }
}
