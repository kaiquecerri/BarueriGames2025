config_load()

function FullScreen()
{
    if window_get_fullscreen()
    {
        window_set_fullscreen(false);
		global.fullscreen = false
    }
    else
    {
        window_set_fullscreen(true);
		global.fullscreen = true
    }
}


