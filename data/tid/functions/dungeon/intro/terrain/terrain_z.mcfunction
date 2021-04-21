#Build the blocks
function tid:dungeon/intro/terrain/pillar

#Recurse
scoreboard players add zcount value 1
execute if score zcount value matches ..100 positioned ~ ~ ~1 run function tid:dungeon/intro/terrain/terrain_z
