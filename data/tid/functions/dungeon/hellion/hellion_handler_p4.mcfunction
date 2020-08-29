#Remove the cage
fill -5 183 -5 5 187 5 air replace bedrock

#Add the teleporter
summon minecraft:area_effect_cloud -6 183 -6 {Duration:99999999,CustomName:"\"teleporter\"",Color:1b,Tags:["starts_open"]}

#These chunks are no longer needed
forceload remove -64 -64 64 64
forceload remove 1000 1000 1032 1032

say Done!

#Move to nonexistent phase
scoreboard players set hellion_handler_phase value 666