-- Resource Metadata
fx_version 'cerulean'
game 'gta5'

author 'Linden'
description "Based on Big Yoda's posted-speedlimit script."
version '1.0.0'

-- What to run
client_script 'cl_speed.lua'

ui_page 'html/index.html'

files{
    'html/index.html',
    'html/app.js',
    'html/style.css',
    'html/speedlimit.png'
}

export "getSpeed"
export "getStreet"
