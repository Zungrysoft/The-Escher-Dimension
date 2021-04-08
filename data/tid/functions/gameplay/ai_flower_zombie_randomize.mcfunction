#Boots color
data modify entity @s ArmorItems[0].tag.display.color set value 16761979
execute if predicate tid:random_50 run data modify entity @s ArmorItems[0].tag.display.color set value 16755113
execute if predicate tid:random_33 run data modify entity @s ArmorItems[0].tag.display.color set value 11141033
execute if predicate tid:random_25 run data modify entity @s ArmorItems[0].tag.display.color set value 12238079
execute if predicate tid:random_20 run data modify entity @s ArmorItems[0].tag.display.color set value 8647899
execute if predicate tid:random_15 run data modify entity @s ArmorItems[0].tag.display.color set value 8647935
execute if predicate tid:random_15 run data modify entity @s ArmorItems[0].tag.display.color set value 16761087
execute if predicate tid:random_10 run data modify entity @s ArmorItems[0].tag.display.color set value 16763628
execute if predicate tid:random_10 run data modify entity @s ArmorItems[0].tag.display.color set value 16758684
execute if predicate tid:random_10 run data modify entity @s ArmorItems[0].tag.display.color set value 16776348
execute if predicate tid:random_05 run data modify entity @s ArmorItems[0].tag.display.color set value 14806766

#Leggings color
data modify entity @s ArmorItems[1].tag.display.color set value 16761979
execute if predicate tid:random_50 run data modify entity @s ArmorItems[1].tag.display.color set value 16755113
execute if predicate tid:random_33 run data modify entity @s ArmorItems[1].tag.display.color set value 11141033
execute if predicate tid:random_25 run data modify entity @s ArmorItems[1].tag.display.color set value 12238079
execute if predicate tid:random_20 run data modify entity @s ArmorItems[1].tag.display.color set value 8647899
execute if predicate tid:random_15 run data modify entity @s ArmorItems[1].tag.display.color set value 8647935
execute if predicate tid:random_15 run data modify entity @s ArmorItems[1].tag.display.color set value 16761087
execute if predicate tid:random_10 run data modify entity @s ArmorItems[1].tag.display.color set value 16763628
execute if predicate tid:random_10 run data modify entity @s ArmorItems[1].tag.display.color set value 16758684
execute if predicate tid:random_10 run data modify entity @s ArmorItems[1].tag.display.color set value 16776348
execute if predicate tid:random_05 run data modify entity @s ArmorItems[1].tag.display.color set value 14806766

#Chestplate color
data modify entity @s ArmorItems[2].tag.display.color set value 16761979
execute if predicate tid:random_50 run data modify entity @s ArmorItems[2].tag.display.color set value 16755113
execute if predicate tid:random_33 run data modify entity @s ArmorItems[2].tag.display.color set value 11141033
execute if predicate tid:random_25 run data modify entity @s ArmorItems[2].tag.display.color set value 12238079
execute if predicate tid:random_20 run data modify entity @s ArmorItems[2].tag.display.color set value 8647899
execute if predicate tid:random_15 run data modify entity @s ArmorItems[2].tag.display.color set value 8647935
execute if predicate tid:random_15 run data modify entity @s ArmorItems[2].tag.display.color set value 16761087
execute if predicate tid:random_10 run data modify entity @s ArmorItems[2].tag.display.color set value 16763628
execute if predicate tid:random_10 run data modify entity @s ArmorItems[2].tag.display.color set value 16758684
execute if predicate tid:random_10 run data modify entity @s ArmorItems[2].tag.display.color set value 16776348
execute if predicate tid:random_05 run data modify entity @s ArmorItems[2].tag.display.color set value 14806766

#Worn Flower
execute if predicate tid:random_50 run data modify entity @s ArmorItems[3].id set value "minecraft:rose_bush"
execute if predicate tid:random_33 run data modify entity @s ArmorItems[3].id set value "minecraft:peony"
execute if predicate tid:random_25 run data modify entity @s ArmorItems[3].id set value "minecraft:sunflower"
execute if predicate tid:random_20 run data modify entity @s ArmorItems[3].id set value "minecraft:tall_grass"
execute if predicate tid:random_15 run data modify entity @s ArmorItems[3].id set value "minecraft:large_fern"
execute if predicate tid:random_15 run data modify entity @s ArmorItems[3].id set value "minecraft:vine"
execute if predicate tid:random_10 run data modify entity @s ArmorItems[3].id set value "minecraft:lily_pad"
execute if predicate tid:random_10 run data modify entity @s ArmorItems[3].id set value "minecraft:crimson_roots"
execute if predicate tid:random_10 run data modify entity @s ArmorItems[3].id set value "minecraft:warped_roots"
execute if predicate tid:random_05 run data modify entity @s ArmorItems[3].id set value "minecraft:grass"

#Held Flower
execute if predicate tid:random_50 run data modify entity @s HandItems[0].id set value "minecraft:poppy"
execute if predicate tid:random_33 run data modify entity @s HandItems[0].id set value "minecraft:blue_orchid"
execute if predicate tid:random_25 run data modify entity @s HandItems[0].id set value "minecraft:allium"
execute if predicate tid:random_20 run data modify entity @s HandItems[0].id set value "minecraft:azure_bluet"
execute if predicate tid:random_15 run data modify entity @s HandItems[0].id set value "minecraft:red_tulip"
execute if predicate tid:random_15 run data modify entity @s HandItems[0].id set value "minecraft:orange_tulip"
execute if predicate tid:random_10 run data modify entity @s HandItems[0].id set value "minecraft:white_tulip"
execute if predicate tid:random_10 run data modify entity @s HandItems[0].id set value "minecraft:pink_tulip"
execute if predicate tid:random_10 run data modify entity @s HandItems[0].id set value "minecraft:oxeye_daisy"
execute if predicate tid:random_09 run data modify entity @s HandItems[0].id set value "minecraft:cornflower"
execute if predicate tid:random_08 run data modify entity @s HandItems[0].id set value "minecraft:lily_of_the_valley"
execute if predicate tid:random_001 run data modify entity @s HandItems[0].id set value "minecraft:wither_rose"
execute if predicate tid:random_05 run data modify entity @s HandItems[0].id set value "minecraft:egg"

#Remove the new tag
tag @s remove new
