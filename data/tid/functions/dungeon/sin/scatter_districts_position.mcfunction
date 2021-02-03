#First, make sure there are markers left to scatter on
execute unless entity @e[type=area_effect_cloud,tag=scatter_marker,limit=1] run kill @s
execute unless entity @e[type=area_effect_cloud,tag=scatter_marker,limit=1] run say OUT OF MARKERS

#Put at the furthest possible position
execute at @e[type=area_effect_cloud,tag=scatter_marker,limit=1,sort=furthest] run tp @s ~ ~ ~

#Maybe instead put it at a random place
execute if predicate tid:random_80 at @e[type=area_effect_cloud,tag=scatter_marker,limit=1,sort=random] run tp @s ~ ~ ~

#Kill all other nearby scatter markers so another district capitol doesn't generate too close
execute at @s run kill @e[type=area_effect_cloud,tag=scatter_marker,distance=0..75]

#Remove the new tag
tag @s remove new
