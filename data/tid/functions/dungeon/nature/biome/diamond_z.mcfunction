#Handle the writing of the block
function tid:dungeon/nature/biome/move_cursor
execute at @e[type=area_effect_cloud,tag=cursor,limit=1] run function tid:dungeon/nature/biome/diamond_write

scoreboard players operation z value += fs value

execute if score z value matches ..63 run function tid:dungeon/nature/biome/diamond_z
scoreboard players add debug value 1