#Set the block
setblock ~ ~ ~ stone_bricks
function tid:dungeon/intro/rng/stone_bricks

#Recurse
execute positioned ~ ~-1 ~ if block ~ ~ ~ #tid:air_or_liquid run function tid:dungeon/intro/rng/pillar
