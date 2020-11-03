#Run the build step on mutant
execute as @e[name="mutant_room_small"] at @s run function tid:dungeon/mutant/build_small
execute as @e[name="mutant_room_tall"] at @s run function tid:dungeon/mutant/build_tall
execute as @e[name="mutant_room_bridge_north"] at @s run function tid:dungeon/mutant/build_bridge_north
execute as @e[name="mutant_room_bridge_west"] at @s run function tid:dungeon/mutant/build_bridge_west

#Run the finalize step on mutant
execute as @e[name="mutant_room_small"] at @s run function tid:dungeon/mutant/finalize_small
execute as @e[name="mutant_room_tall"] at @s run function tid:dungeon/mutant/finalize_tall
execute as @e[name="mutant_room_bridge_north"] at @s run function tid:dungeon/mutant/finalize_bridge_north
execute as @e[name="mutant_room_bridge_west"] at @s run function tid:dungeon/mutant/finalize_bridge_west

#Remove the cage
fill -5 55 -5 5 59 5 air replace bedrock

#Add the teleporter
summon minecraft:area_effect_cloud -6 55 -6 {Duration:99999999,CustomName:"\"teleporter\"",Color:3b,Tags:["starts_open"]}

#Remove straggler markers
kill @e[type=area_effect_cloud,name="station_straggler_start"]
kill @e[type=area_effect_cloud,name="moon_straggler_start"]

#These chunks are no longer needed
forceload remove 0 0 128 128
forceload remove 0 0 128 -128
forceload remove 0 0 -128 128
forceload remove 0 0 -128 -128
forceload remove 1000 1000 1064 1064

say Done!

#Move to nonexistent phase
scoreboard players set layer_3_handler_phase value 666

