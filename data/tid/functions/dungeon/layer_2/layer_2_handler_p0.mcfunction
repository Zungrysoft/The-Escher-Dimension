#Message
say Waiting for chunks to load...

#Load the chunks necessary for generation
forceload add -130 -130 130 0
forceload add -130 0 130 130
forceload add 1000 1000 1064 1064

#Now that chunks are loaded, move to next phase
scoreboard players set layer_2_handler_phase value 10
