#Determine if we will actually generate this
#Basically, this function makes it significantly less likely for these end pieces to generate from biome sections
scoreboard players set temp5 value 0
execute if predicate tid:random_15 run scoreboard players set temp5 value 1
execute unless entity @s[tag=biome] run scoreboard players set temp5 value 1
execute if score temp5 value matches 1 run function tid:dungeon/nature/select_end_build
