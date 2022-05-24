fx_version "adamant"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

description 'RexshackGaming : Gold Rush'

client_scripts {
	'client/client.lua',
}

server_scripts {
	'server/server.lua',
}

dependency 'qbr-core' -- https://github.com/qbcore-redm-framework/qbr-core
dependency 'rsg_notify' -- https://github.com/RexShack/rsg_notify

this_is_a_map 'yes'
lua54 'yes'