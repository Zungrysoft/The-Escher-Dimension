#Stronghold
execute if block ~ ~-1 ~ cracked_stone_bricks run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:orange_dye,Count:1}],HandDropChances:[1.00F]}
execute if block ~ ~-1 ~ mossy_stone_bricks run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:quartz,Count:1}],HandDropChances:[0F],DeathLootTable: "tid:entities/carrier_quartz"}

#Boomstick Basement
execute if block ~ ~-1 ~ bricks if predicate tid:random_60 run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:magenta_dye,Count:1}],HandDropChances:[1.00F]}

#The Deep Cold
execute if block ~ ~-1 ~ packed_ice run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:light_blue_dye,Count:1}],HandDropChances:[1.00F]}
execute if block ~ ~-1 ~ blue_ice run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:light_blue_dye,Count:1}],HandDropChances:[1.00F]}
