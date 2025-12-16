fx_version 'cerulean'
game 'gta5'

author 'PlugX Scripts'
description 'PlugX Scripts (Night Door Lock System)'
version '1.0.0'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

client_scripts {
    'client.lua'
}

server_scripts {
    'server.lua'
}

dependencies {
    'ox_doorlock',
    'ox_lib'
}