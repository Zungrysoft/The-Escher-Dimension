#Message
say Waiting for chunks to load...

#Load the chunks necessary for generation
forceload add -128 -128 128 64
forceload add 1000 1000 1064 1064

#Now that chunks are loaded, move to next phase
scoreboard players set layer_1_handler_phase value 10