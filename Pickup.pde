// One Pickup = one row of the CSV = one time I picked up my phone.

class Pickup {

  String trigger;   // why I reached for it
  int length;       // how long I was on it, 1 to 5
  int after;        // how I felt after: +1, 0, -1

  Pickup(String trigger, int length, int after) {
    this.trigger = trigger;
    this.length = length;
    this.after = after;
  }

  // a method that returns a value: longer on the phone, bigger circle
  float dotSize() {
    return length * 8;
  }

  // a method that returns a value: the reason decides the colour
  color dotColour() {
    if (trigger.equals("N")) return color(70, 130, 200);   // notification
    if (trigger.equals("B")) return color(240, 170, 60);   // bored
    if (trigger.equals("P")) return color(90, 170, 110);   // purpose
    if (trigger.equals("A")) return color(210, 70, 80);    // avoiding
    return color(150, 110, 190);                           // habit
  }

  void display(float x, float y) {
    noStroke();
    fill(dotColour());
    ellipse(x, y, dotSize(), dotSize());

    // ones I regretted get a ring
    if (after < 0) {
      noFill();
      stroke(dotColour());
      ellipse(x, y, dotSize() + 8, dotSize() + 8);
    }
  }
}
