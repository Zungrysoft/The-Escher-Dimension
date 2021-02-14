#Summon the scatterer
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["new"]}

#Set the number to generate
scoreboard players set tnt_count value 170

#Start the recursion
function tid:dungeon/brick/tnt_scatter_recurse

#Kill the scatterer
kill @e[tag=new]
