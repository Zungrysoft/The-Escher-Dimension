#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

execute positioned ~ ~ ~ run function tid:misc/neon_junk_pile_pillar

execute positioned ~1 ~ ~ if predicate tid:random_90 run function tid:misc/neon_junk_pile_pillar
execute positioned ~-1 ~ ~ if predicate tid:random_90 run function tid:misc/neon_junk_pile_pillar
execute positioned ~ ~ ~1 if predicate tid:random_90 run function tid:misc/neon_junk_pile_pillar
execute positioned ~ ~ ~-1 if predicate tid:random_90 run function tid:misc/neon_junk_pile_pillar

execute positioned ~1 ~ ~1 if predicate tid:random_40 run function tid:misc/neon_junk_pile_pillar
execute positioned ~-1 ~ ~1 if predicate tid:random_40 run function tid:misc/neon_junk_pile_pillar
execute positioned ~1 ~ ~-1 if predicate tid:random_40 run function tid:misc/neon_junk_pile_pillar
execute positioned ~-1 ~ ~-1 if predicate tid:random_40 run function tid:misc/neon_junk_pile_pillar
