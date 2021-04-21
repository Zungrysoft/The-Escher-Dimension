#Pick the block
function tid:dungeon/wicked/rng/block

#Recurse
scoreboard players add zcount value 1
execute if score zcount value matches ..9 positioned ~ ~ ~1 run function tid:dungeon/wicked/rng/rng_z
