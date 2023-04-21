# Count down
scoreboard players remove cave_count value 1

# Scatter position
tp @e[type=area_effect_cloud,tag=new,limit=1] ~-16 ~-8 ~-16
execute as @e[type=area_effect_cloud,tag=new,limit=1] run function tid:dungeon/stronghold2/cave_scatter_randomize

# Check if we should skip this carve
scoreboard players set skip_carve value 0
execute at @e[type=area_effect_cloud,tag=new,limit=1] if entity @e[type=minecraft:area_effect_cloud,name="teleporter",distance=0..20] run scoreboard players set skip_carve value 1

# Carve the cave
execute if score skip_carve value matches 0 at @e[type=area_effect_cloud,tag=new,limit=1] run function tid:dungeon/stronghold2/cave

# Recurse
execute if score cave_count value matches 1.. run function tid:dungeon/stronghold2/cave_scatter_recurse
