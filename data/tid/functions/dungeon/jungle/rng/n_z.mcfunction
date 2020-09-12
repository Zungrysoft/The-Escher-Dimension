#Next direction
scoreboard players set ycount value 0
function tid:dungeon/jungle/rng/y

#Recurse
scoreboard players add zcount value 1
execute unless score zcount value matches 100.. positioned ~ ~ ~1 run function tid:dungeon/jungle/rng/n_z