function config_load(){
	var file = working_directory + "config";
	
	try{
		var handle = file_text_open_read(file);
		global.fullscreen = file_text_read_real(handle);
		global.sound = file_text_read_real(handle);
		global.music = file_text_read_real(handle);
		global.actual_level = file_text_read_real(handle);
		
		file_text_close(handle)
	} catch(_exception) {
		global.fullscreen = false
		global.sound = 0.5
		global.music = 0.5
		global.actual_level = 1
	}
	
	window_set_fullscreen(global.fullscreen);
	global.grv = 0.7
}

function config_save(){
	var file = working_directory + "config";
	var handle = file_text_open_write(file)
	
	file_text_write_real(handle, global.fullscreen)
	file_text_write_real(handle, global.sound)
	file_text_write_real(handle, global.music)
	file_text_write_real(handle, global.actual_level)
	file_text_close(handle)
}