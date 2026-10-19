# Dear Data 100 — Phone Pickups

IN1007 #CreativeCoding — Dear Data 100 assignment.

A Processing sketch depicting every time I picked up my phone over several weeks, and what
pulled me to it.

## The data

One row per pickup, collected in a phone notes app in the moment and transcribed here every
few days. Codes and collection rules are in [CODES.md](CODES.md).

| column | meaning |
|---|---|
| `date` | day of the observation |
| `time` | 24-hour clock, when I picked it up |
| `trigger` | why I reached for it — notification, boredom, purpose, avoidance, habit |
| `app` | where I actually ended up |
| `length` | how long I was on it, banded 1–5 |
| `after` | how I felt putting it down: +1 / 0 / −1 |

## The sketch

| file | what it does |
|---|---|
| `DearData100.pde` | loads the CSV, builds one object per observation, lays them out |
| `Pickup.pde` | the `Pickup` class — one observation, knowing how to draw itself |
| `data/pickups.csv` | the observations |

Each mark on the canvas is one pickup: across is the day, down is the time of day, colour is
why I reached for it, size is how long I stayed, and regrets get a ring.

Open `DearData100.pde` in Processing and run.
