#Summon the marker
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["scatter"]}

#Spread the treasure around
spreadplayers 0 0 1 100 under 30 false @e[type=area_effect_cloud,tag=scatter,limit=1]
execute at @e[type=area_effect_cloud,tag=scatter,limit=1] run function tid:misc/infernal_scatter_chests_place
spreadplayers 0 0 1 100 under 40 false @e[type=area_effect_cloud,tag=scatter,limit=1]
execute at @e[type=area_effect_cloud,tag=scatter,limit=1] run function tid:misc/infernal_scatter_chests_place
spreadplayers 0 0 1 100 under 50 false @e[type=area_effect_cloud,tag=scatter,limit=1]
execute at @e[type=area_effect_cloud,tag=scatter,limit=1] run function tid:misc/infernal_scatter_chests_place
spreadplayers 0 0 1 100 under 60 false @e[type=area_effect_cloud,tag=scatter,limit=1]
execute at @e[type=area_effect_cloud,tag=scatter,limit=1] run function tid:misc/infernal_scatter_chests_place
spreadplayers 0 0 1 100 under 70 false @e[type=area_effect_cloud,tag=scatter,limit=1]
execute at @e[type=area_effect_cloud,tag=scatter,limit=1] run function tid:misc/infernal_scatter_chests_place
spreadplayers 0 0 1 100 under 80 false @e[type=area_effect_cloud,tag=scatter,limit=1]
execute at @e[type=area_effect_cloud,tag=scatter,limit=1] run function tid:misc/infernal_scatter_chests_place
spreadplayers 0 0 1 100 under 90 false @e[type=area_effect_cloud,tag=scatter,limit=1]
execute at @e[type=area_effect_cloud,tag=scatter,limit=1] run function tid:misc/infernal_scatter_chests_place
spreadplayers 0 0 1 100 under 120 false @e[type=area_effect_cloud,tag=scatter,limit=1]
execute at @e[type=area_effect_cloud,tag=scatter,limit=1] run function tid:misc/infernal_scatter_chests_place

spreadplayers 0 0 1 100 under 25 false @e[type=area_effect_cloud,tag=scatter,limit=1]
execute at @e[type=area_effect_cloud,tag=scatter,limit=1] run function tid:misc/infernal_scatter_chests_place
spreadplayers 0 0 1 100 under 35 false @e[type=area_effect_cloud,tag=scatter,limit=1]
execute at @e[type=area_effect_cloud,tag=scatter,limit=1] run function tid:misc/infernal_scatter_chests_place
spreadplayers 0 0 1 100 under 45 false @e[type=area_effect_cloud,tag=scatter,limit=1]
execute at @e[type=area_effect_cloud,tag=scatter,limit=1] run function tid:misc/infernal_scatter_chests_place
spreadplayers 0 0 1 100 under 55 false @e[type=area_effect_cloud,tag=scatter,limit=1]
execute at @e[type=area_effect_cloud,tag=scatter,limit=1] run function tid:misc/infernal_scatter_chests_place
spreadplayers 0 0 1 100 under 65 false @e[type=area_effect_cloud,tag=scatter,limit=1]
execute at @e[type=area_effect_cloud,tag=scatter,limit=1] run function tid:misc/infernal_scatter_chests_place
spreadplayers 0 0 1 100 under 75 false @e[type=area_effect_cloud,tag=scatter,limit=1]
execute at @e[type=area_effect_cloud,tag=scatter,limit=1] run function tid:misc/infernal_scatter_chests_place
spreadplayers 0 0 1 100 under 85 false @e[type=area_effect_cloud,tag=scatter,limit=1]
execute at @e[type=area_effect_cloud,tag=scatter,limit=1] run function tid:misc/infernal_scatter_chests_place
spreadplayers 0 0 1 100 under 95 false @e[type=area_effect_cloud,tag=scatter,limit=1]
execute at @e[type=area_effect_cloud,tag=scatter,limit=1] run function tid:misc/infernal_scatter_chests_place

#Kill the marker
kill @e[type=area_effect_cloud,tag=scatter]