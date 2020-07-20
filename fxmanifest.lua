-- Resource Metadata
fx_version 'bodacious'
games { 'gta5' }

author 'Linden'
description "Based on Big Yoda's posted-speedlimit script."
version '1.0.0'

-- What to run
client_scripts {
    'cl_speed.lua'
}

ui_page('html/index.html')

files({
    'html/index.html',
    'html/app.js',
    'html/style.css',
})

export "getSpeed"
export "getStreet"