#Return value
scoreboard players set success value 1

#Store this doorway's y value
execute store result score temp value run data get entity @s Pos[1]

#Check if there are any stair rooms whose y value is equal or greater than this room's y value
#If so, the test fails
execute as @e[type=area_effect_cloud,name="tower_marker",distance=0..12] at @s if score @s y >= temp value run scoreboard players set success value 0
