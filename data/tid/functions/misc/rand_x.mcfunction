scoreboard players add xcount value 1
scoreboard players set ycount value 0
function tid:misc/rand_y
execute unless score xcount value matches 30.. positioned ~1 ~ ~ run function tid:misc/rand_x