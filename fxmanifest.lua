fx_version 'cerulean'
game 'gta5'

author 'PlugX Scripts'
description 'Security System'
version '1.0.0'

escrow_ignore {
  'config.lua'
}

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
    'ox_lib',
    'ox_doorlock'
}
dependency '/assetpacks'