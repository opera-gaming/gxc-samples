profileImage = -1;
profileSurface = -1;
avatarUrl = "";
userId = "";
email = "";
createdDate = "";
name = "";

load = function () {
  var url = "https://api.gmx.dev/gg/profile";
  var map = ds_map_create();
  ds_map_add(map, "Content-Type", "application/json");
  ds_map_add(map, "Access-Control-Allow-Origin", "*");
  ds_map_add(map, "Access-Control-Allow-Credentials", "true");
  profileRequest = http_request(url, "GET", map, "");
};

drawCircular = function (px, py, radius) {
  if (profileImage != -1) {
    if (!surface_exists(profileSurface)) {
      profileSurface = surface_create(width, height);
      surface_set_target(profileSurface);
      draw_circle(width / 2, height / 2, min(width / 2, height / 2), false);
      gpu_set_colorwriteenable(1, 1, 1, 0);
      draw_sprite(profileImage, 0, 0, 0);
      surface_reset_target();
    }

    var scale = (radius * 2) / min(width, height);
    draw_surface_ext(profileSurface, px, py, scale, scale, 0, c_white, 1);
  } else {
    draw_set_color(c_white);
    draw_circle(px + radius, py + radius, radius, true);
  }
};

load();
