if (challenge == minotaur) {
  if (current_time < endTime) {
    if (keyboard_check_pressed(vk_space)) {
      steps++;
    }
  } else {
    if (!gameOver) {
      gameOver = true;
      submit_challenge_score(steps);
    }
  }
}
