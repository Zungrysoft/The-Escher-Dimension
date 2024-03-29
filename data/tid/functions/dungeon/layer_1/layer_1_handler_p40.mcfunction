#Remove the cage
fill -5 55 -5 5 59 5 air replace bedrock

#Kill markers
kill @e[type=area_effect_cloud,name="brick_largeroom_marker"]

#Build ice pillars
execute as @e[type=area_effect_cloud,name="ice_pillar"] at @s run function tid:misc/ice_pillar

# Carve spire cave in stronghold ruins
execute as @e[type=area_effect_cloud,name="stronghold2_spire"] at @s run function tid:dungeon/stronghold2/cave_scatter

#These chunks are no longer needed
forceload remove all

#We're finished
execute as @a at @s run function tid:general/complete_sound
say Done!

#Move to nonexistent phase
scoreboard players set layer_1_handler_phase value 666
