#Load the chunks necessary for generation
forceload add -128 -128 128 64
forceload add 1000 1000 1064 1064

#If chunks are loaded, move to the next phase
execute unless block -128 0 -128 clay unless block 128 0 64 clay unless block 1000 0 1000 clay unless block 1064 0 1064 clay run scoreboard players set layer_1_handler_phase value 10

