if (ds_map_find_value(async_load, "id") == scoreRequest) {
  if (ds_map_find_value(async_load, "http_status") == 200) {
    scoreSubmitted = true;
  }
}
