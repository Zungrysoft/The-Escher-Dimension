#Floor
fill ~1 ~ ~1 ~-1 ~ ~-1 polished_granite replace air

#Chest
execute if block ~ ~-1 ~-3 polished_granite_stairs run setblock ~ ~1 ~ chest[facing=south]{LootTable: "tid:chests/moon"}
execute if block ~ ~-1 ~3 polished_granite_stairs run setblock ~ ~1 ~ chest[facing=north]{LootTable: "tid:chests/moon"}
