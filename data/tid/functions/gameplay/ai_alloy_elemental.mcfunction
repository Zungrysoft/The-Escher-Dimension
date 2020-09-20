execute store result score @s counter1 run data get entity @s Health

#High health, gold armor, slow
execute if score @s counter1 matches 27..40 run data modify entity @s ArmorItems set value [{id:golden_boots,Count:1},{id:golden_leggings,Count:1},{id:golden_chestplate,Count:1},{id:golden_helmet,Count:1}]
execute if score @s counter1 matches 27..40 run data modify entity @s HandItems set value [{id:golden_hoe,Count:1}]

#Medium health, iron armor, medium speed
execute if score @s counter1 matches 14..26 run data modify entity @s ArmorItems set value [{id:iron_boots,Count:1},{id:iron_leggings,Count:1},{id:iron_chestplate,Count:1},{id:iron_helmet,Count:1}]
execute if score @s counter1 matches 14..26 run data modify entity @s HandItems set value [{id:iron_hoe,Count:1}]
execute if score @s counter1 matches 14..26 run effect give @s speed 999999 0 true

#Low health, diamond armor, fast
execute if score @s counter1 matches 0..13 run data modify entity @s ArmorItems set value [{id:diamond_boots,Count:1},{id:diamond_leggings,Count:1},{id:diamond_chestplate,Count:1},{id:diamond_helmet,Count:1}]
execute if score @s counter1 matches 0..13 run data modify entity @s HandItems set value [{id:diamond_hoe,Count:1}]
execute if score @s counter1 matches 0..13 run effect give @s speed 999999 1 true