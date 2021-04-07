/// Universal joy/keybinds seen throughout the game. This way keys,
// gamepad, and touch controls can all be mapped to one variable.

// However, you'll need to call this script anywhere input is found.

gamepad_set_axis_deadzone(0, 0.5);

left    =   keyboard_check(vk_left) || gamepad_button_check(0,gp_padl) || (gamepad_axis_value(0, gp_axislh) < 0);
right   =   keyboard_check(vk_right) || gamepad_button_check(0,gp_padr) || (gamepad_axis_value(0, gp_axislh) > 0);
up      =   keyboard_check(vk_up) || gamepad_button_check(0,gp_padu) || (gamepad_axis_value(0, gp_axislv) < 0); 
down    =   keyboard_check(vk_down) || gamepad_button_check(0,gp_padd) || (gamepad_axis_value(0, gp_axislv) > 0);

a       =   keyboard_check_pressed(ord('Z')) || gamepad_button_check_pressed(0,gp_face2);
a_hold  =   keyboard_check(ord('Z')) || gamepad_button_check(0,gp_face2);
b       =   keyboard_check_pressed(ord('X')) || gamepad_button_check_pressed(0,gp_face1);
b_hold  =   keyboard_check(ord('X')) || gamepad_button_check(0,gp_face1);
start   =   keyboard_check_pressed(vk_return) || gamepad_button_check_pressed(0,gp_start);
select  =   keyboard_check_pressed(vk_shift) || gamepad_button_check_pressed(0,gp_select);
