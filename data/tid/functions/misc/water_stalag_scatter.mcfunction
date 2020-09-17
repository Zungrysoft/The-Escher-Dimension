#Summon the scatterer
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["new"]}

#Set the number to generate
scoreboard players set water_stalag_count value 400

#Start the recursion
function tid:misc/water_stalag_scatter_recurse

#Kill the scatterer
kill @e[tag=new]