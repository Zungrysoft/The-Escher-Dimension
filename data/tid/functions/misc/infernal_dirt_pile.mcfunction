#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#Create initial pile
setblock ~ ~ ~ coarse_dirt
setblock ~1 ~ ~ coarse_dirt
setblock ~-1 ~ ~ coarse_dirt
setblock ~ ~ ~1 coarse_dirt
setblock ~ ~ ~-1 coarse_dirt

#Maybe put ancient debris in pile
execute if predicate tid:random_02 run setblock ~ ~ ~ ancient_debris
execute if predicate tid:random_02 run setblock ~1 ~ ~ ancient_debris
execute if predicate tid:random_02 run setblock ~-1 ~ ~ ancient_debris
execute if predicate tid:random_02 run setblock ~ ~ ~1 ancient_debris
execute if predicate tid:random_02 run setblock ~ ~ ~-1 ancient_debris

#Generate the rest
execute positioned ~ ~1 ~ run function tid:misc/infernal_dirt_pile_pillar

execute positioned ~1 ~1 ~ run function tid:misc/infernal_dirt_pile_pillar
execute positioned ~-1 ~1 ~ run function tid:misc/infernal_dirt_pile_pillar
execute positioned ~ ~1 ~1 run function tid:misc/infernal_dirt_pile_pillar
execute positioned ~ ~1 ~-1 run function tid:misc/infernal_dirt_pile_pillar

execute positioned ~2 ~ ~ run function tid:misc/infernal_dirt_pile_pillar
execute positioned ~-2 ~ ~ run function tid:misc/infernal_dirt_pile_pillar
execute positioned ~ ~ ~2 run function tid:misc/infernal_dirt_pile_pillar
execute positioned ~ ~ ~-2 run function tid:misc/infernal_dirt_pile_pillar

execute positioned ~1 ~ ~1 run function tid:misc/infernal_dirt_pile_pillar
execute positioned ~-1 ~ ~1 run function tid:misc/infernal_dirt_pile_pillar
execute positioned ~1 ~ ~-1 run function tid:misc/infernal_dirt_pile_pillar
execute positioned ~-1 ~ ~-1 run function tid:misc/infernal_dirt_pile_pillar

execute if predicate tid:random_66 positioned ~1 ~ ~2 run function tid:misc/infernal_dirt_pile_pillar
execute if predicate tid:random_66 positioned ~2 ~ ~1 run function tid:misc/infernal_dirt_pile_pillar
execute if predicate tid:random_66 positioned ~-1 ~ ~2 run function tid:misc/infernal_dirt_pile_pillar
execute if predicate tid:random_66 positioned ~-2 ~ ~1 run function tid:misc/infernal_dirt_pile_pillar
execute if predicate tid:random_66 positioned ~1 ~ ~-2 run function tid:misc/infernal_dirt_pile_pillar
execute if predicate tid:random_66 positioned ~2 ~ ~-1 run function tid:misc/infernal_dirt_pile_pillar
execute if predicate tid:random_66 positioned ~-1 ~ ~-2 run function tid:misc/infernal_dirt_pile_pillar
execute if predicate tid:random_66 positioned ~-2 ~ ~-1 run function tid:misc/infernal_dirt_pile_pillar
