#Add random iron tool
data modify entity @s HandItems[0] set value {id:"minecraft:iron_sword",Count:1}
execute if predicate tid:random_50 run data modify entity @s HandItems[0] set value {id:"minecraft:iron_pickaxe",Count:1}
execute if predicate tid:random_33 run data modify entity @s HandItems[0] set value {id:"minecraft:iron_axe",Count:1}
execute if predicate tid:random_25 run data modify entity @s HandItems[0] set value {id:"minecraft:iron_shovel",Count:1}
execute if predicate tid:random_20 run data modify entity @s HandItems[0] set value {id:"minecraft:iron_hoe",Count:1}
