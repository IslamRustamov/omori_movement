movement_list = []

function add_point(_point) {
	array_push(movement_list, _point);

	if (array_length(movement_list) == array_length(obj_movement_manager.characters)) {
		array_shift(movement_list);
	}
}
