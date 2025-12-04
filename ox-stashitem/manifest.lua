fx_version 'cerulean'
game 'gta5'

author 'yanzvr46'
description 'stash ox inventory qbox. qbcore'
version '1.0.0'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

client_scripts {
    'client.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua', 
    'server.lua'
}

dependencies {
    'ox_inventory',
    'ox_target',
    'ox_lib'
}
