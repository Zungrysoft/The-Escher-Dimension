#Remove the cage
fill -5 55 -5 5 59 5 air replace bedrock

#Add the teleporter
summon minecraft:area_effect_cloud -6 55 -6 {Duration:99999999,CustomName:"\"teleporter\"",Color:3b,Tags:["starts_open"]}

#Generate pipes in Fusion Central
#execute as @e[type=area_effect_cloud,name="pipe_start"] at @s run function tid:misc/fusion_pipe_start

#These chunks are no longer needed
forceload remove -128 -196 128 64
forceload remove 1000 1000 1064 1064

say Done!

#Move to nonexistent phase
scoreboard players set layer_2_handler_phase value 666