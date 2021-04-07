#Summon the scatterer
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["new2"]}

#Generate the pockets
function tid:misc/water_pocket_scatter
function tid:misc/water_pocket_scatter
function tid:misc/water_pocket_scatter
execute if predicate tid:random_50 run function tid:misc/water_pocket_scatter
execute if predicate tid:random_40 run function tid:misc/water_pocket_scatter
execute if predicate tid:random_20 run function tid:misc/water_pocket_scatter

#Kill the scatterer
kill @e[tag=new2]
