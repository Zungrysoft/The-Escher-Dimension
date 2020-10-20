#Remove the cage
fill -5 55 -5 5 59 5 air replace bedrock

#These chunks are no longer needed
forceload remove -128 -128 128 64
forceload remove 1000 1000 1064 1064

say Done!

#Move to nonexistent phase
scoreboard players set layer_1_handler_phase value 666