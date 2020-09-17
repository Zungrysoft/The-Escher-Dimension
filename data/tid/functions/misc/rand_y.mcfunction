scoreboard players add ycount value 1
scoreboard players set zcount value 0
function tid:misc/rand_z
execute unless score ycount value matches 30.. positioned ~ ~1 ~ run function tid:misc/rand_y