function init_characters(){
	var _leader = instance_create_depth(500, 500, -1000, obj_wizard);
	
	var _second = instance_create_depth(_leader.x - 80, 500, -1000, obj_clerk);
	
	var _third = instance_create_depth(_second.x - 80, 500, -1000, obj_cat);
	
	var _fourth = instance_create_depth(_third.x - 80, 500, -1000, obj_coffee);
	
	obj_movement_manager.characters = [_leader, _second, _third, _fourth]
}

function prepopulate_movement_list(_characters) {
	for (var _i = array_length(_characters) - 1; _i >= 1; _i--) {
		array_push(_characters[0].movement_list, {x: _characters[_i].x, y: _characters[_i].y});
	}
}

function change_leader(_characters) {
	var _length = array_length(_characters);
	
	var _temp_array = [];
	
	for (var _i = 0; _i < _length; _i++) {
		array_push(_temp_array, {x: _characters[_i].x, y: _characters[_i].y});
	}
	
	for (var _i = 0; _i < _length; _i++) {
		if (_i == 0) {
			_characters[_i].x = _temp_array[_length - 1].x;
			_characters[_i].y = _temp_array[_length - 1].y;
		} else {
			_characters[_i].x = _temp_array[_i - 1].x;
			_characters[_i].y = _temp_array[_i - 1].y;
		}
	}
	
	var _first = array_shift(_characters);
	
	array_push(_characters, _first);
	
	var _new_leader = array_first(_characters);
	
	prepopulate_movement_list(_characters);	
}