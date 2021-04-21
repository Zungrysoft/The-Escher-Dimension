#Next direction
scoreboard players set zcount value 0
function tid:dungeon/wicked/rng/rng_z

#Recurse
scoreboard players add xcount value 1
execute if score xcount value matches ..9 positioned ~1 ~ ~ run function tid:dungeon/wicked/rng/rng_x
