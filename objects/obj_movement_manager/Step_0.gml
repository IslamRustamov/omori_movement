// MOVEMENT OF CHARACTERS
array_foreach(characters, function(_character, _index) {
	var _h_direction = keyboard_check_released(vk_right) - keyboard_check_released(vk_left)
	var _v_direction = keyboard_check_released(vk_down) - keyboard_check_released(vk_up)

	if (_h_direction != 0) {
		if (_index == 0) {
			_character.add_point({x: _character.x, y: _character.y});
			_character.x += _h_direction * h_speed;
		} else {
			var _points_length = array_length(characters[0].movement_list);
			_character.x = characters[0].movement_list[_points_length - _index].x;
			_character.y = characters[0].movement_list[_points_length - _index].y;
		}
	}
	
	if (_v_direction != 0) {
		if (_index == 0) {
			_character.add_point({x: _character.x, y: _character.y});
			_character.y += _v_direction * h_speed;
		} else {
			var _points_length = array_length(characters[0].movement_list);
			_character.x = characters[0].movement_list[_points_length - _index].x;
			_character.y = characters[0].movement_list[_points_length - _index].y;
		}
	}
});

// CHANGING OF THE LEADER
if (keyboard_check_released(vk_space)) {
	change_leader(characters)
}