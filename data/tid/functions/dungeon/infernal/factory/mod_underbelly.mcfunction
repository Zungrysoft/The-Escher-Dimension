#Lava pool below
execute positioned ~ 0 ~ run fill ~20 ~11 ~20 ~-20 ~20 ~-20 lava

#Create the empty space
execute positioned ~ 0 ~ run fill ~20 ~21 ~20 ~-20 ~30 ~-20 air
execute positioned ~ 0 ~ run fill ~20 ~31 ~20 ~-20 ~40 ~-20 air

#Re-reserve the space
execute positioned ~ 128 ~ run fill ~17 ~11 ~17 ~-17 ~20 ~-17 blue_wool
execute positioned ~ 128 ~ run fill ~17 ~21 ~17 ~-17 ~30 ~-17 blue_wool
execute positioned ~ 128 ~ run fill ~17 ~31 ~17 ~-17 ~40 ~-17 blue_wool

#Add the island
execute if predicate tid:random_80 run summon minecraft:area_effect_cloud ~ -1 ~ {Duration:99999999,CustomName:"\"scatter\""}
execute if predicate tid:random_10 run summon minecraft:area_effect_cloud ~ -1 ~ {Duration:99999999,CustomName:"\"scatter\""}
spreadplayers ~ ~ 11 11 false @e[type=area_effect_cloud,name="scatter"]
execute at @e[type=area_effect_cloud,name="scatter"] positioned ~-5 15 ~-5 run function tid:dungeon/infernal/factory/select_island
kill @e[type=area_effect_cloud,name="scatter"]
