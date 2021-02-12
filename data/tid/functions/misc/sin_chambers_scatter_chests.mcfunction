#Summon the marker
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["scatter"]}

#Set the spread score
scoreboard players set temp value 22500

#Start recursion
function tid:misc/sin_chambers_scatter_chests_recurse

#Kill the marker
kill @e[type=area_effect_cloud,tag=scatter]
