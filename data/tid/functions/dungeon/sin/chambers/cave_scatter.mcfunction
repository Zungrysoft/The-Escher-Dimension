#Summon the scatterer
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["new"]}

#Set the number to generate
scoreboard players set cave_count value 190

#Start the recursion
function tid:dungeon/sin/chambers/cave_scatter_recurse

#Place the items in the cave
execute as @e[type=area_effect_cloud,tag=cave_item] at @s run function tid:misc/sin_chambers_cave_item

#Kill the scatterer
kill @e[tag=new]
