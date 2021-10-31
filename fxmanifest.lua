-- Resource Metadata
fx_version 'cerulean'
game 'gta5'

author 'Mystic'
description 'mystic-speedlimit'
version '1.0.0'

-- What to run
client_script 'cl_speed.lua'

ui_page 'html/index.html'

files{
    'html/index.html',
    'html/app.js',
    'html/style.css',
    'html/speedlimit.png',
    'html/HWYGWDE.woff'
}

export "getSpeed"
export "getStreet"
