#Load the chunks necessary for generation
forceload add -100 -100 100 100
forceload add 1000 1000 1032 1032

#If chunks are loaded, move to the next phase
execute unless block -100 0 -100 clay unless block 100 0 100 clay unless block 1000 0 1000 clay unless block 1032 0 1032 clay run scoreboard players set jungle_handler_phase value 10