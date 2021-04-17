#Add randomized netherite armor
execute if predicate tid:random_05 run data modify entity @s ArmorItems[0] set value {id:"minecraft:netherite_boots",Count:1}
execute if predicate tid:random_05 run data modify entity @s ArmorItems[1] set value {id:"minecraft:netherite_leggings",Count:1}
execute if predicate tid:random_05 run data modify entity @s ArmorItems[2] set value {id:"minecraft:netherite_chestplate",Count:1}
execute if predicate tid:random_05 run data modify entity @s ArmorItems[3] set value {id:"minecraft:netherite_helmet",Count:1}
