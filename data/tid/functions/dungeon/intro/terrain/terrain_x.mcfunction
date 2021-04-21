#Next direction
scoreboard players set zcount value 0
function tid:dungeon/intro/terrain/terrain_z

#Recurse
scoreboard players add xcount value 1
execute if score xcount value matches ..100 positioned ~1 ~ ~ run function tid:dungeon/intro/terrain/terrain_x
