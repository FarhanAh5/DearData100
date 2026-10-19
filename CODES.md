# Dear Data 100 — Phone Pickups

**Phenomenon:** every time I pick up my phone, what pulled me to it and how I felt after.

One observation = one pickup. Log it *in the moment*, in your phone's notes app, as a single
comma-separated line. Takes about 5 seconds.

---

## The line format

```
date,time,trigger,app,length,after
```

Example of a real line:

```
19/10,14:32,B,TT,3,-1
```

Read as: *on 19 Oct at 14:32 I picked up my phone out of boredom, went to TikTok, was on it
5–15 minutes, and felt worse afterwards.*

---

## The codes

Keep one note in your phone called **Pickups**. Pin it. Every line goes at the bottom.

### `date` — day
`19/10` — day/month. Always two digits (`05/11`, not `5/11`).

### `time` — 24-hour clock
`14:32` — when you picked it up, not when you put it down. Nearest minute is fine.

### `trigger` — why you reached for it

| code | meaning |
|---|---|
| `N` | **Notification** — it buzzed/lit up and I responded |
| `B` | **Boredom** — nothing was happening, so I reached for it |
| `P` | **Purpose** — I needed something specific (alarm, map, message someone, look something up) |
| `A` | **Avoidance** — I was meant to be doing something else and didn't want to |
| `H` | **Habit** — genuinely no idea why my hand did that |

This column is the heart of the whole project. Be honest, especially about `A` and `H`.

### `app` — where you actually ended up

| code | app |
|---|---|
| `IG` | Instagram |
| `TT` | TikTok |
| `WA` | WhatsApp |
| `YT` | YouTube |
| `SC` | Snapchat |
| `DC` | Discord |
| `SP` | Spotify / music |
| `BR` | Browser / Google |
| `GM` | Games |
| `UT` | Utility — clock, camera, maps, banking, calculator |
| `OT` | Other |

*Where you ended up*, not where you intended to go. If you opened it for the alarm and left via
Instagram, that's `IG`.

Edit this list to match your actual phone — but **fix it before you start** and don't change it
after, or your data stops being consistent.

### `length` — how long you were on it

| code | duration |
|---|---|
| `1` | under a minute |
| `2` | 1–5 minutes |
| `3` | 5–15 minutes |
| `4` | 15–30 minutes |
| `5` | over 30 minutes |

Bands, not exact times — you'll never keep exact times up for three weeks. Estimate immediately
after putting the phone down, while you still remember.

### `after` — how you felt putting it down

| code | feeling |
|---|---|
| `+1` | better — glad I did that |
| `0` | nothing either way |
| `-1` | worse — regret, guilt, flat |

---

## Rules

1. **Log in the moment.** Reconstructing your day at midnight is guessing, not data.
2. **Log the bad ones.** The 1am doomscroll is the most interesting row in your dataset. Leaving
   it out quietly ruins the project.
3. **Don't change the codes mid-collection.** If you must add one, add it and note the date — the
   course notes say this happens, just keep it rare.
4. **Nothing identifying.** No names, no message contents. Codes only.
5. **Transcribe to the CSV every few days.** That's also your GitHub commit — and commits on
   separate days spanning over two weeks are worth 15 of the 25 Week 05 GitHub marks.

## The observer effect

You will probably pick up your phone less, simply because you're counting. That is not a problem
with your data — **that is a finding**, and it's exactly the kind of thing to tell the assessor in
your check-in. Note the date you noticed it changing.

---

## Target

| by | observations |
|---|---|
| Week 05 check-in | 25 (worth 1 mark each) |
| Week 10 submission | 100 (worth 0.25 marks each) |

At a realistic 10–15 pickups a day, 100 takes about **8–10 days**. Collect for longer than that
anyway — "collected over time" is in the brief, and the GitHub commit span needs two weeks.
