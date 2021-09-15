if (challenge == minotaur) {
  if (current_time < endTime) {
    if (keyboard_check_pressed(vk_space)) {
      steps++;
    }
  } else {
    if (!gameOver) {
      gameOver = true;

      var url =
        "https://api.gmx.dev/gg/games/" +
        game +
        "/challenges/" +
        challenge +
        "/scores";
      var data =
        "{\"releaseTrackId\": \"" + track + "\", \"score\": " + string(steps) + "}";

      var map = ds_map_create();
      ds_map_add(map, "Content-Type", "application/json");
      ds_map_add(map, "Access-Control-Allow-Credentials", "true");
      scoreRequest = http_request(url, "POST", map, data);
    }
  }
}
