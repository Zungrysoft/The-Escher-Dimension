#Floor
execute positioned ~-4 ~ ~ run function tid:misc/water_ruin_row
execute positioned ~-3 ~ ~ run function tid:misc/water_ruin_row
execute positioned ~-2 ~ ~ run function tid:misc/water_ruin_row
execute positioned ~-1 ~ ~ run function tid:misc/water_ruin_row
execute positioned ~0 ~ ~ run function tid:misc/water_ruin_row
execute positioned ~1 ~ ~ run function tid:misc/water_ruin_row
execute positioned ~2 ~ ~ run function tid:misc/water_ruin_row
execute positioned ~3 ~ ~ run function tid:misc/water_ruin_row
execute positioned ~4 ~ ~ run function tid:misc/water_ruin_row

#Pillars
execute positioned ~4 ~1 ~ run function tid:misc/water_ruin_wall_south
execute positioned ~-4 ~1 ~ run function tid:misc/water_ruin_wall_south
execute positioned ~ ~1 ~4 run function tid:misc/water_ruin_wall_east
execute positioned ~ ~1 ~-4 run function tid:misc/water_ruin_wall_east

#Interior
execute if predicate tid:random_70 positioned ~-3 ~1 ~ run function tid:misc/water_ruin_shortwall_south
execute if predicate tid:random_70 positioned ~-2 ~1 ~ run function tid:misc/water_ruin_shortwall_south
execute if predicate tid:random_70 positioned ~-1 ~1 ~ run function tid:misc/water_ruin_shortwall_south
execute if predicate tid:random_70 positioned ~0 ~1 ~ run function tid:misc/water_ruin_shortwall_south
execute if predicate tid:random_70 positioned ~1 ~1 ~ run function tid:misc/water_ruin_shortwall_south
execute if predicate tid:random_70 positioned ~2 ~1 ~ run function tid:misc/water_ruin_shortwall_south
execute if predicate tid:random_70 positioned ~3 ~1 ~ run function tid:misc/water_ruin_shortwall_south

#Recurse
scoreboard players set temp9 value 1
execute if predicate tid:random_30 run scoreboard players set temp9 value 0
execute if predicate tid:random_70 if block ~ ~-19 ~ water run scoreboard players set temp9 value 0
execute if score temp9 value matches 1 positioned ~ ~6 ~ run function tid:misc/water_ruin
