show_debug_message(json_encode(async_load));
var http_status = ds_map_find_value(async_load, "http_status");
var requestId = ds_map_find_value(async_load, "id");
if (requestId == profileRequest && http_status == 200) {
  var result = json_parse(ds_map_find_value(async_load, "result"));
  avatarUrl = result.data.avatarUrl;
  userId = result.data.userId;
  name = result.data.name;
  if (avatarUrl == pointer_null) {
    avatarUrl = "";
  }
  if (name == pointer_null) {
    name = "";
  }
  if (string_length(avatarUrl)) {
    imageRequest = sprite_add(avatarUrl, 0, false, false, 0, 0);
  }
}
