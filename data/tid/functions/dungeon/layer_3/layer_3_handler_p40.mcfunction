#Remove the cage
fill -5 55 -5 5 59 5 air replace bedrock

#Add the teleporter
summon minecraft:area_effect_cloud -6 55 -6 {Duration:99999999,CustomName:"\"teleporter\"",Color:3b,Tags:["starts_open"]}

#Remove straggler markers
kill @e[type=area_effect_cloud,name="station_straggler_start"]
kill @e[type=area_effect_cloud,name="moon_straggler_start"]

#These chunks are no longer needed
forceload remove -64 -128 64 64
forceload remove 1000 1000 1064 1064

say Done!

#Move to nonexistent phase
scoreboard players set layer_3_handler_phase value 666

