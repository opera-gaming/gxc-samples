draw_set_color(c_white);
draw_set_halign(fa_center);
if (challenge == minotaur) {
  draw_text(
    640,
    360,
    "-- This is the Minotaur Gauntlet challenge, run, run as fast as you can --"
  );
  if (gameOver) {
    draw_text(
      640,
      380,
      "You got smacked in the face but at least you ran " +
        string(steps) +
        " steps first"
    );
    if (scoreSubmitted) {
      draw_text(640, 440, "score submitted");
    }
  } else {
    draw_text(
      640,
      380,
      string(floor((endTime - current_time) / 1000)) +
        " seconds left to run. Press space to take a step"
    );
    draw_text(640, 400, "steps: " + string(steps));
  }
} else {
  draw_text(640, 360, "This is the regular game, no challenge here");
}
