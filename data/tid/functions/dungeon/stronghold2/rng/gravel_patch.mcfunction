#Initial block
setblock ~ ~ ~ gravel

#Ring 1
execute positioned ~1 ~ ~ if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block
execute positioned ~-1 ~ ~ if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block
execute positioned ~ ~ ~1 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block
execute positioned ~ ~ ~-1 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block

execute if predicate tid:random_80 positioned ~1 ~ ~1 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block
execute if predicate tid:random_80 positioned ~1 ~ ~-1 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block
execute if predicate tid:random_80 positioned ~-1 ~ ~1 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block
execute if predicate tid:random_80 positioned ~-1 ~ ~-1 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block

#Ring 2
execute if predicate tid:random_60 positioned ~2 ~ ~ if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block
execute if predicate tid:random_60 positioned ~-2 ~ ~ if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block
execute if predicate tid:random_60 positioned ~ ~ ~2 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block
execute if predicate tid:random_60 positioned ~ ~ ~-2 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block

execute if predicate tid:random_25 positioned ~2 ~ ~1 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block
execute if predicate tid:random_25 positioned ~-2 ~ ~1 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block
execute if predicate tid:random_25 positioned ~2 ~ ~-1 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block
execute if predicate tid:random_25 positioned ~-2 ~ ~-1 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block

execute if predicate tid:random_25 positioned ~1 ~ ~2 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block
execute if predicate tid:random_25 positioned ~-1 ~ ~2 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block
execute if predicate tid:random_25 positioned ~1 ~ ~-2 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block
execute if predicate tid:random_25 positioned ~-1 ~ ~-2 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block

execute if predicate tid:random_08 positioned ~2 ~ ~2 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block
execute if predicate tid:random_08 positioned ~-2 ~ ~2 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block
execute if predicate tid:random_08 positioned ~2 ~ ~-2 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block
execute if predicate tid:random_08 positioned ~-2 ~ ~-2 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block

#Ring 3
execute if predicate tid:random_08 positioned ~3 ~ ~ if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block
execute if predicate tid:random_08 positioned ~-3 ~ ~ if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block
execute if predicate tid:random_08 positioned ~ ~ ~3 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block
execute if predicate tid:random_08 positioned ~ ~ ~-3 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block

execute if predicate tid:random_04 positioned ~3 ~ ~1 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block
execute if predicate tid:random_04 positioned ~-3 ~ ~1 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block
execute if predicate tid:random_04 positioned ~3 ~ ~-1 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block
execute if predicate tid:random_04 positioned ~-3 ~ ~-1 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block

execute if predicate tid:random_04 positioned ~1 ~ ~3 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block
execute if predicate tid:random_04 positioned ~-1 ~ ~3 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block
execute if predicate tid:random_04 positioned ~1 ~ ~-3 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block
execute if predicate tid:random_04 positioned ~-1 ~ ~-3 if block ~ ~-1 ~ #tid:gravel_adjacent run function tid:dungeon/stronghold2/rng/gravel_block
