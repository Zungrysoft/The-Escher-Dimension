#Stronghold
execute if block ~ ~-1 ~ cracked_stone_bricks run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:orange_dye,Count:1}],HandDropChances:[2F]}
execute if block ~ ~-1 ~ mossy_stone_bricks run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:quartz,Count:5}],HandDropChances:[2F]}

#Boomstick Basement
execute if block ~ ~-1 ~ bricks if predicate tid:random_60 run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:magenta_dye,Count:1}],HandDropChances:[2F]}

#The Deep Cold
execute if block ~ ~-1 ~ packed_ice run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:light_blue_dye,Count:1}],HandDropChances:[2F]}
execute if predicate tid:random_20 unless entity @e[type=cat,distance=0..30] if block ~ ~-1 ~ packed_ice run summon cat ~-1 ~ ~ {PersistenceRequired:1b}
execute if block ~ ~-1 ~ blue_ice run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:light_blue_dye,Count:1}],HandDropChances:[2F]}
execute if predicate tid:random_10 if block ~ ~-1 ~ polished_basalt run summon minecraft:cat
