// Dear Data 100 - Phone Pickups
// One mark on the canvas for every time I picked up my phone.
//   across  = which day
//   down    = what time of day
//   colour  = why I reached for it
//   size    = how long I was on it
//   offset  = how I felt putting it down

Table table;             // the raw CSV
Pickup[] pickups;        // one object per observation
StringList days;         // every distinct date, in the order I collected them

void setup() {
  size(1000, 700);

  // "header" tells Processing the first line is column names, not data
  table = loadTable("pickups.csv", "header");

  days = new StringList();
  pickups = new Pickup[table.getRowCount()];

  int i = 0;
  for (TableRow row : table.rows()) {
    String d = row.getString("date");

    // build the list of distinct days as we go, so we can space them out later
    if (!days.hasValue(d)) {
      days.append(d);
    }

    pickups[i] = new Pickup(
      d,
      row.getString("time"),
      row.getString("trigger"),
      row.getString("app"),
      row.getInt("length"),
      row.getInt("after")
    );
    i++;
  }

  println("Loaded " + pickups.length + " pickups across " + days.size() + " days.");
}

void draw() {
  background(250, 248, 244);
  drawHours();

  for (int i = 0; i < pickups.length; i++) {
    float x = columnFor(pickups[i]);
    float y = rowFor(pickups[i]);
    pickups[i].display(x, y);
  }

  noLoop();   // the data doesn't change, so draw it once
}

// --- methods that return a value ---------------------------------
// Each of these takes a Pickup and gives back a number: where on the
// canvas that observation belongs.

float columnFor(Pickup p) {
  int dayIndex = days.index(p.date);
  return map(dayIndex, 0, max(1, days.size() - 1), 90, width - 60);
}

float rowFor(Pickup p) {
  // 0 minutes = midnight at the top, 1440 = midnight at the bottom
  return map(p.minutesSinceMidnight(), 0, 1440, 60, height - 40);
}

// --- background -------------------------------------------------

void drawHours() {
  textAlign(RIGHT, CENTER);
  textSize(10);

  for (int h = 0; h <= 24; h += 3) {
    float y = map(h * 60, 0, 1440, 60, height - 40);

    stroke(0, 25);
    line(70, y, width - 40, y);

    noStroke();
    fill(120);
    text(nf(h, 2) + ":00", 62, y);
  }
}
