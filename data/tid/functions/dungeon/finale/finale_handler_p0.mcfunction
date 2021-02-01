#Message
say Waiting for chunks to load...

#Load the chunks necessary for generation
forceload add 60 20 -60 -100
forceload add 1000 1000 1032 1032

#Now that chunks are loaded, move to next phase
scoreboard players set finale_handler_phase value 10
