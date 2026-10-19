// One Pickup object = one row of pickups.csv = one time I picked up my phone.

class Pickup {

  // --- fields: what this observation knows about itself ---
  String date;      // "19/10"
  String time;      // "14:32"
  String trigger;   // N B P A H
  String app;       // IG TT WA ...
  int length;       // 1..5  (duration band)
  int after;        // -1, 0, +1  (how I felt)

  // --- constructor: how one gets built ---
  Pickup(String date, String time, String trigger, String app, int length, int after) {
    this.date = date;
    this.time = time;
    this.trigger = trigger;
    this.app = app;
    this.length = length;
    this.after = after;
  }

  // --- methods that return a value -------------------------------
  // This is the kind of method the Week 05 check-in asks you to write:
  // it takes the object's own data, works something out, and hands it back.

  // "14:32" -> 872
  int minutesSinceMidnight() {
    int hours = int(time.substring(0, 2));
    int mins  = int(time.substring(3, 5));
    return hours * 60 + mins;
  }

  // bigger band = bigger mark
  float diameter() {
    return map(length, 1, 5, 6, 34);
  }

  // why I reached for it decides the colour
  color colour() {
    if (trigger.equals("N")) return color(70, 130, 200);    // notification - blue
    if (trigger.equals("B")) return color(240, 170, 60);    // boredom      - amber
    if (trigger.equals("P")) return color(90, 170, 110);    // purpose      - green
    if (trigger.equals("A")) return color(210, 70, 80);     // avoiding     - red
    return color(150, 110, 190);                            // habit        - purple
  }

  // felt worse -> sits left of its day, felt better -> sits right
  float nudge() {
    return after * 9;
  }

  // --- display: how it draws itself ------------------------------

  void display(float x, float y) {
    float d = diameter();

    noStroke();
    fill(colour(), 170);
    ellipse(x + nudge(), y, d, d);

    // a regret gets a ring around it, so the bad ones stand out
    if (after < 0) {
      noFill();
      stroke(colour());
      strokeWeight(1);
      ellipse(x + nudge(), y, d + 6, d + 6);
    }
  }
}
