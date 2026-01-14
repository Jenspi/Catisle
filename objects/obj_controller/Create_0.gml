/// @description Camera resolution
// Code by https://www.youtube.com/watch?v=KV5RdNYiBW4&list=PLUEcBPiXnlBwNjhLWzJAQJ78deyXRIIZl&index=4


enum RES {
	WIDTH = 320,
	HEIGHT = 180,
	SCALE = 1
}

// Camera
var _camera = camera_create_view(0, 0, RES.WIDTH, RES.HEIGHT, 0, obj_player, -1, -1, RES.WIDTH/2, RES.HEIGHT/2);
view_enabled = true;
view_visible[0] = true;

view_set_camera(0, _camera);