#Message
say Waiting for chunks to load...

#Load the chunks necessary for generation
forceload add -128 -128 128 0
forceload add -128 0 128 128
forceload add 1000 1000 1064 1064
forceload add 2000 2000 2064 2064

#Now that chunks are loaded, move to next phase
scoreboard players set layer_2_handler_phase value 10
