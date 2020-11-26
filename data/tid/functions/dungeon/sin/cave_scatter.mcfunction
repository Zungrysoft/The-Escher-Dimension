#Summon the scatterer
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["new"]}

#Set the number to generate
scoreboard players set cave_count value 100

#Start the recursion
function tid:dungeon/sin/cave_scatter_recurse

#Kill the scatterer
kill @e[tag=new]
