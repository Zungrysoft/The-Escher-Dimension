#Message
say Waiting for chunks to load...

#Load the chunks necessary for generation
forceload add -50 -50 50 50
forceload add 1000 1000 1032 1032

#Now that chunks are loaded, move to next phase
scoreboard players set intro_handler_phase value 10
