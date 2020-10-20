#Load the chunks necessary for generation
forceload add -128 -128 0 128
forceload add 0 -128 128 128
forceload add 1000 1000 1064 1064

#If chunks are loaded, move to the next phase
execute unless block -120 0 -120 clay unless block 120 0 120 clay unless block 1000 0 1000 clay unless block 1064 0 1064 clay run scoreboard players set infernal_handler_phase value 10