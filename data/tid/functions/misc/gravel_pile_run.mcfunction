#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

#Place the gravel
execute positioned ~0 ~-3 ~0 run function tid:misc/gravel_pile_pillar
execute positioned ~1 ~-2 ~0 run function tid:misc/gravel_pile_pillar
execute positioned ~2 ~-1 ~0 run function tid:misc/gravel_pile_pillar
execute positioned ~3 ~-2 ~0 run function tid:misc/gravel_pile_pillar
execute positioned ~4 ~-3 ~0 run function tid:misc/gravel_pile_pillar

execute positioned ~0 ~-2 ~1 run function tid:misc/gravel_pile_pillar
execute positioned ~1 ~-1 ~1 run function tid:misc/gravel_pile_pillar
execute positioned ~2 ~-0 ~1 run function tid:misc/gravel_pile_pillar
execute positioned ~3 ~-1 ~1 run function tid:misc/gravel_pile_pillar
execute positioned ~4 ~-2 ~1 run function tid:misc/gravel_pile_pillar

execute positioned ~0 ~-1 ~2 run function tid:misc/gravel_pile_pillar
execute positioned ~1 ~-0 ~2 run function tid:misc/gravel_pile_pillar
execute positioned ~2 ~-0 ~2 run function tid:misc/gravel_pile_pillar
execute positioned ~3 ~-0 ~2 run function tid:misc/gravel_pile_pillar
execute positioned ~4 ~-1 ~2 run function tid:misc/gravel_pile_pillar

execute positioned ~0 ~-1 ~3 run function tid:misc/gravel_pile_pillar
execute positioned ~1 ~-0 ~3 run function tid:misc/gravel_pile_pillar
execute positioned ~2 ~-0 ~3 run function tid:misc/gravel_pile_pillar
execute positioned ~3 ~-0 ~3 run function tid:misc/gravel_pile_pillar
execute positioned ~4 ~-1 ~3 run function tid:misc/gravel_pile_pillar

execute positioned ~0 ~-2 ~4 run function tid:misc/gravel_pile_pillar
execute positioned ~1 ~-1 ~4 run function tid:misc/gravel_pile_pillar
execute positioned ~2 ~-0 ~4 run function tid:misc/gravel_pile_pillar
execute positioned ~3 ~-1 ~4 run function tid:misc/gravel_pile_pillar
execute positioned ~4 ~-2 ~4 run function tid:misc/gravel_pile_pillar

execute positioned ~0 ~-3 ~5 run function tid:misc/gravel_pile_pillar
execute positioned ~1 ~-2 ~5 run function tid:misc/gravel_pile_pillar
execute positioned ~2 ~-1 ~5 run function tid:misc/gravel_pile_pillar
execute positioned ~3 ~-2 ~5 run function tid:misc/gravel_pile_pillar
execute positioned ~4 ~-3 ~5 run function tid:misc/gravel_pile_pillar

#Place the ores
execute if predicate tid:random_40 positioned ~1 ~ ~1 run function tid:misc/gravel_pile_ore
execute if predicate tid:random_40 positioned ~2 ~ ~1 run function tid:misc/gravel_pile_ore
execute if predicate tid:random_40 positioned ~3 ~ ~1 run function tid:misc/gravel_pile_ore

execute if predicate tid:random_40 positioned ~1 ~ ~2 run function tid:misc/gravel_pile_ore
setblock ~2 ~ ~2 iron_ore
execute if predicate tid:random_40 positioned ~3 ~ ~2 run function tid:misc/gravel_pile_ore

execute if predicate tid:random_40 positioned ~1 ~ ~3 run function tid:misc/gravel_pile_ore
execute if predicate tid:random_40 positioned ~2 ~ ~3 run function tid:misc/gravel_pile_ore
execute if predicate tid:random_40 positioned ~3 ~ ~3 run function tid:misc/gravel_pile_ore

execute if predicate tid:random_40 positioned ~1 ~ ~4 run function tid:misc/gravel_pile_ore
execute if predicate tid:random_40 positioned ~2 ~ ~4 run function tid:misc/gravel_pile_ore
execute if predicate tid:random_40 positioned ~3 ~ ~4 run function tid:misc/gravel_pile_ore
