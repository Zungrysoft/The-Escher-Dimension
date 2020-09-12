#Next direction
scoreboard players set zcount value 0
function tid:dungeon/jungle/rng/s_z

#Recurse
scoreboard players add xcount value 1
execute unless score xcount value matches 100.. positioned ~-1 ~ ~ run function tid:dungeon/jungle/rng/se_x