#Generate Damnation Station bramble
execute as @e[type=area_effect_cloud,name="station_bramble_marker"] at @s run function tid:dungeon/station/bramble/scatter

#Add dropout stairwells to The Moon Zone
execute as @e[type=area_effect_cloud,name="moon_dropout"] at @s run function tid:misc/moon_dropout

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

# Replace warped hyphae at entrance with stone
fill -9 58 -28 9 55 -28 stone replace warped_hyphae

#These chunks are no longer needed
forceload remove all

#We're finished
execute as @a at @s run function tid:general/complete_sound
say Done!

#Move to nonexistent phase
scoreboard players set layer_3_handler_phase value 666

