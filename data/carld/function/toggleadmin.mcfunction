# toggles the admin tag which is used (by sardines and stuckinthemud)
# to disable people with the tag from being put inside the game
tag @s[tag=admin] add wasadmin

tellraw @s[tag=!admin] "toggled admin mode on"
tag @s[tag=!admin] add isadmin

tellraw @s[tag=wasadmin] "toggled admin mode off"
tag @s[tag=wasadmin] remove admin

tag @s remove wasadmin