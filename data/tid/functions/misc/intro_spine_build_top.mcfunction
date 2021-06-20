#Place the top block
scoreboard players set temp19 value 0
execute if predicate tid:random_50 run scoreboard players set temp19 value 1
execute if predicate tid:random_50 run scoreboard players set temp19 value 2
execute if predicate tid:random_50 run scoreboard players set temp19 value 3

execute if score temp19 value matches 0 positioned ~0 ~ ~0 run function tid:misc/intro_spine_build_top_block
execute if score temp19 value matches 1 positioned ~1 ~ ~0 run function tid:misc/intro_spine_build_top_block
execute if score temp19 value matches 2 positioned ~0 ~ ~1 run function tid:misc/intro_spine_build_top_block
execute if score temp19 value matches 3 positioned ~1 ~ ~1 run function tid:misc/intro_spine_build_top_block

#Count score
scoreboard players remove spine_height value 1

#Set success
scoreboard players set success value 1
