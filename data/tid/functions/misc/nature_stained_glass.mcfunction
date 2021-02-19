#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

#Pick the palette
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2
execute if predicate tid:random_50 run scoreboard players add temp value 4

#Place the blocks
execute positioned ~ ~0 ~-2 run function tid:misc/nature_stained_glass_block
execute positioned ~ ~0 ~-1 run function tid:misc/nature_stained_glass_block
execute positioned ~ ~0 ~0 run function tid:misc/nature_stained_glass_block
execute positioned ~ ~0 ~1 run function tid:misc/nature_stained_glass_block
execute positioned ~ ~0 ~2 run function tid:misc/nature_stained_glass_block

execute positioned ~ ~1 ~-2 run function tid:misc/nature_stained_glass_block
execute positioned ~ ~1 ~-1 run function tid:misc/nature_stained_glass_block
execute positioned ~ ~1 ~0 run function tid:misc/nature_stained_glass_block
execute positioned ~ ~1 ~1 run function tid:misc/nature_stained_glass_block
execute positioned ~ ~1 ~2 run function tid:misc/nature_stained_glass_block

execute positioned ~ ~2 ~-2 run function tid:misc/nature_stained_glass_block
execute positioned ~ ~2 ~-1 run function tid:misc/nature_stained_glass_block
execute positioned ~ ~2 ~0 run function tid:misc/nature_stained_glass_block
execute positioned ~ ~2 ~1 run function tid:misc/nature_stained_glass_block
execute positioned ~ ~2 ~2 run function tid:misc/nature_stained_glass_block

execute positioned ~ ~3 ~-2 run function tid:misc/nature_stained_glass_block
execute positioned ~ ~3 ~-1 run function tid:misc/nature_stained_glass_block
execute positioned ~ ~3 ~0 run function tid:misc/nature_stained_glass_block
execute positioned ~ ~3 ~1 run function tid:misc/nature_stained_glass_block
execute positioned ~ ~3 ~2 run function tid:misc/nature_stained_glass_block
