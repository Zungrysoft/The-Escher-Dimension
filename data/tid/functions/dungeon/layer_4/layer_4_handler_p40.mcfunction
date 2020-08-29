#Remove the cage
fill -5 55 -5 5 59 5 air replace bedrock

#These chunks are no longer needed
forceload remove -64 -64 64 64
forceload remove 1000 1000 1064 1064

say Done!

#Move to nonexistent phase
scoreboard players set layer_4_handler_phase 666