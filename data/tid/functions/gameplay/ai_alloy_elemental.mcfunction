#Cycle through ores
scoreboard players add @s counter1 1
execute if score @s counter1 matches 40.. run scoreboard players set @s counter1 0

#Iron
execute if score @s counter1 matches 0..11 run data modify entity @s ArmorItems set value [{id:iron_boots,Count:1},{id:iron_leggings,Count:1},{id:iron_chestplate,Count:1},{id:iron_helmet,Count:1}]
execute if score @s counter1 matches 0..11 run data modify entity @s HandItems set value [{id:iron_hoe,Count:1}]
execute if score @s counter1 matches 0..11 run data modify entity @s DeathLootTable set value "tid:entities/alloy_elemental_iron"

#Gold
execute if score @s counter1 matches 12..23 run data modify entity @s ArmorItems set value [{id:golden_boots,Count:1},{id:golden_leggings,Count:1},{id:golden_chestplate,Count:1},{id:golden_helmet,Count:1}]
execute if score @s counter1 matches 12..23 run data modify entity @s HandItems set value [{id:golden_hoe,Count:1}]
execute if score @s counter1 matches 12..23 run data modify entity @s DeathLootTable set value "tid:entities/alloy_elemental_gold"

#Iron
execute if score @s counter1 matches 24..35 run data modify entity @s ArmorItems set value [{id:iron_boots,Count:1},{id:iron_leggings,Count:1},{id:iron_chestplate,Count:1},{id:iron_helmet,Count:1}]
execute if score @s counter1 matches 24..35 run data modify entity @s HandItems set value [{id:iron_hoe,Count:1}]
execute if score @s counter1 matches 24..35 run data modify entity @s DeathLootTable set value "tid:entities/alloy_elemental_iron"

#Diamond
execute if score @s counter1 matches 36..39 run data modify entity @s ArmorItems set value [{id:diamond_boots,Count:1},{id:diamond_leggings,Count:1},{id:diamond_chestplate,Count:1},{id:diamond_helmet,Count:1}]
execute if score @s counter1 matches 36..39 run data modify entity @s HandItems set value [{id:diamond_hoe,Count:1}]
execute if score @s counter1 matches 36..39 run data modify entity @s DeathLootTable set value "tid:entities/alloy_elemental_diamond"