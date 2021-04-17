summon minecraft:zombie ~ ~1 ~ {CustomName:"\"Fountain of Flame\"", Health:30,Attributes:[{Name:"generic.max_health",Base:30F}],HandItems:[{id:blaze_rod,Count:1},{id:blaze_rod,Count:1}],HandDropChances:[0.05F,0.05F],ActiveEffects: [{ShowParticles:0b,Duration:999999999,Id:12b}],IsBaby:0,Fire:999999,ArmorItems:[{id:leather_boots,tag:{display:{color:16351261}},Count:1},{id:leather_leggings,tag:{display:{color:16351261}},Count:1},{id:leather_chestplate,tag:{display:{color:16351261}},Count:1},{id:nether_gold_ore,Count:1}],ArmorDropChances:[0.00F,0.00F,0.00F,0.00F],Tags:["fire_fountain"],DeathLootTable: "tid:entities/fire_fountain"}

#Maybe spawn it holding a light gray dye
scoreboard players set temp9 value 0
execute if predicate tid:random_33 run scoreboard players set temp9 value 1
execute if score temp9 value matches 1 run data modify entity @e[type=zombie,tag=fire_fountain,distance=0..2,limit=1] HandItems[1] set value {id:light_gray_dye,Count:1}
execute if score temp9 value matches 1 run data modify entity @e[type=zombie,tag=fire_fountain,distance=0..2,limit=1] HandDropChances[1] set value 2F
