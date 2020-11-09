#Determine if we're at an edge
scoreboard players set temp value 0
execute if score x value matches 0 run scoreboard players set temp value 1
execute if score z value matches 0 run scoreboard players set temp value 1
execute if score x value matches 65 run scoreboard players set temp value 1
execute if score z value matches 65 run scoreboard players set temp value 1

#Handle the writing of the block
function tid:dungeon/nature/biome/move_cursor
execute if score temp value matches 0 at @e[type=area_effect_cloud,tag=cursor,limit=1] run function tid:dungeon/nature/biome/square_write
execute if score temp value matches 1 at @e[type=area_effect_cloud,tag=cursor,limit=1] run function tid:dungeon/nature/biome/square_write_edge

scoreboard players operation z value += fs value

execute if score z value matches ..63 run function tid:dungeon/nature/biome/square_z
scoreboard players add debug value 1