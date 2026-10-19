// Dear Data 100 - Phone Pickups
// One circle for every time I picked up my phone.

Table table;
Pickup[] pickups;

void setup() {
  size(900, 600);

  table = loadTable("pickups.csv", "header");
  pickups = new Pickup[table.getRowCount()];

  for (int i = 0; i < table.getRowCount(); i++) {
    TableRow row = table.getRow(i);

    pickups[i] = new Pickup(
      row.getString("trigger"),
      row.getInt("length"),
      row.getInt("after")
    );
  }

  println("Loaded " + pickups.length + " pickups");
}

void draw() {
  background(245, 243, 238);

  // 10 circles per row, in the order they happened
  for (int i = 0; i < pickups.length; i++) {
    float x = 90 + (i % 10) * 80;
    float y = 90 + (i / 10) * 55;
    pickups[i].display(x, y);
  }
}
