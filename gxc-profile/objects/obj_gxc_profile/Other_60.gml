if (ds_map_find_value(async_load, "id") == imageRequest) {
  if (ds_map_find_value(async_load, "status") >= 0) {
    profileImage = imageRequest;
    width = sprite_get_width(profileImage);
    height = sprite_get_height(profileImage);
  }
}
