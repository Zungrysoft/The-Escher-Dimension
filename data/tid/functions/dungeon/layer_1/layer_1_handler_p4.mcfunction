#Remove the cage
fill -5 183 -5 5 187 5 air replace bedrock

#These chunks are no longer needed
forceload remove -64 -64 64 64
forceload remove 1000 1000 1064 1064

say Done!

#Move to nonexistent phase
scoreboard players set layer_1_handler_phase 666