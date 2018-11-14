//if (!global.pause) exit;

key_up = keyboard_check_pressed(vk_up);
key_down = keyboard_check_pressed(vk_down);
key_enter = keyboard_check_pressed(vk_enter);

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);

var ochange = key_down - key_up;
if (ochange != 0) {
	menu_option[page] += ochange;
	if (menu_option[page] > ds_height - 1)
		menu_option[page] = 0;
	else if (menu_option[page] < 0)
		menu_option[page] = ds_height - 1;
	//AUDIO
}

if (key_enter) {
	switch (ds_grid[# 1, menu_option[page]]) {
		case menu_element_type.page_transfer: page = ds_grid[# 2, menu_option[page]];
			break;
	}
	//AUDIO
}