// One Meal is one thing I ate or drank.

class Meal {

  String place;   // C cooked, B bought, G given
  float cost;     // roughly what it cost me
  int after;      // 1 glad, 0 fine, -1 regret

  Meal(String place, float cost, int after) {
    this.place = place;
    this.cost = cost;
    this.after = after;
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

    // a ring round the ones I regretted
    if (after < 0) {
      noFill();
      stroke(60);
      circle(x, y, dotSize() + 8);
    }
  }
}
