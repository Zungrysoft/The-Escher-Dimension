#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#Decide whether to generate a spawner
execute if predicate tid:random_15 run function tid:misc/ice_random_spawner

#Decide whether to generate a chest
function tid:misc/ice_maybe_chest
