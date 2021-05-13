function tid:misc/neon_junk_pile_block
execute positioned ~ ~1 ~ if predicate tid:random_40 run function tid:misc/neon_junk_pile_block
execute positioned ~ ~2 ~ unless block ~ ~-1 ~ air if predicate tid:random_20 run function tid:misc/neon_junk_pile_block
