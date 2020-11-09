#Remove the cage
fill -5 55 -5 5 59 5 air replace bedrock

#Add the teleporter
summon minecraft:area_effect_cloud -6 55 -6 {Duration:99999999,CustomName:"\"teleporter\"",Color:11b,Tags:["starts_open"]}

#Generate pipes in Fusion Central
#execute as @e[type=area_effect_cloud,name="pipe_start"] at @s run function tid:misc/fusion_pipe_start

#Remove locators
kill @e[type=area_effect_cloud,name="neon_chest_locator"]

#These chunks are no longer needed
forceload remove -128 -128 128 0
forceload remove -128 0 128 128
forceload remove 1000 1000 1064 1064
forceload remove 2000 2000 2064 2064

say Done!

#Move to nonexistent phase
scoreboard players set layer_2_handler_phase value 666