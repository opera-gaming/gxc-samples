function submit_challenge_score(score) {
  var challenge = get_query_param("challenge");
  var track = get_query_param("track");
  var game = get_query_param("game");
  var hash = sha1_string_utf8(game + challenge + track + string(score));

  var url =
    "https://api.gmx.dev/gg/games/" +
    game +
    "/challenges/" +
    challenge +
    "/scores";
  var data =
    "{\"releaseTrackId\": \"" +
    track +
    "\", \"score\": " +
    string(score) +
    ", \"hash\": \"" +
    hash +
    "\"}";

  var map = ds_map_create();
  ds_map_add(map, "Content-Type", "application/json");
  ds_map_add(map, "Access-Control-Allow-Credentials", "true");
  return http_request(url, "POST", map, data);
}
