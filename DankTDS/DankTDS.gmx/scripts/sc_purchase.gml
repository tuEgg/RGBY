if show_contents = true {
    if ob_player.current_gun != argument0 {
        if global.money >= ob_player.gun_stat[argument0,7] {
            global.money -= ob_player.gun_stat[argument0,7];
            sc_money_gain_lost('-'+string(ob_player.gun_stat[argument0,7]),make_color_rgb(251,79,79),view_xview+48,view_yview+view_hview-71-16,room_speed);
            ob_player.current_gun = argument0;
            ob_player.clip_ammo = ob_player.gun_stat[argument0,6];
            ob_player.total_ammo = ob_player.gun_stat[argument0,5];
            global.homing = false;
            ob_error_controller.error[5,0] = string(ob_player.gun_stat[argument0,8])+' purchased' // Error message
            ob_error_controller.error[5,99] = 1;
            ob_error_controller.error[1,99] = 0;
            ob_error_controller.error[4,99] = 0;
            ob_error_controller.alarm[0] = room_speed*3;
        } else {
            ob_error_controller.error[1,99] = 1;
            ob_error_controller.error[4,99] = 0;
            ob_error_controller.error[5,99] = 0;
            ob_error_controller.alarm[0] = room_speed*3;
        }
    } else {
            ob_error_controller.error[4,99] = 1;
            ob_error_controller.error[1,99] = 0;
            ob_error_controller.error[5,99] = 0;
            ob_error_controller.alarm[0] = room_speed*3;
    }
}
