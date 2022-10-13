-- FX Information
fx_version 'cerulean'
lua54 'yes'
game 'gta5'

-- Resource Information
name 'astro-pizzajob'
author 'katakume#5873'
version '1.0.0'

client_scripts {
	'client/cl.lua',
    'client/garaz.lua',
    'config.lua'
}

server_scripts {
	'server/sv.lua',
    'config.lua'
}

shared_scripts {
    '@ox_lib/init.lua',
    '@es_extended/imports.lua'
}

dependencies {
    'oxmysql',
    'Astro-NotifySystem',
    'ox_lib',
    'es_extended'
}
