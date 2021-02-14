#Generate Damnation Station bramble
execute as @e[type=area_effect_cloud,name="station_bramble_marker"] at @s run function tid:dungeon/station/bramble/scatter

#Remove the cage
fill -5 55 -5 5 59 5 air replace bedrock

#Add the teleporter
summon minecraft:area_effect_cloud -6 55 -6 {Duration:99999999,CustomName:"\"teleporter\"",Color:3b,Tags:["starts_open"]}

#Remove straggler markers
kill @e[type=area_effect_cloud,name="station_straggler_start"]
kill @e[type=area_effect_cloud,name="moon_straggler_start"]
kill @e[type=area_effect_cloud,name="moon_tower_marker"]

#Remove nexus safeguard
fill 22 60 -27 -23 54 29 stone replace cobblestone

#These chunks are no longer needed
forceload remove all

say Done!

#Move to nonexistent phase
scoreboard players set layer_3_handler_phase value 666

