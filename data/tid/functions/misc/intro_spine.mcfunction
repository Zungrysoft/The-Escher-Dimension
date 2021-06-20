#Success value for if the spine was actually built
scoreboard players set success value 0

#Decide the height
scoreboard players set spine_height value 48
execute if predicate tid:random_50 run scoreboard players set spine_height value 58
execute if predicate tid:random_33 run scoreboard players set spine_height value 68
execute if predicate tid:random_25 run scoreboard players set spine_height value 78
execute if predicate tid:random_10 run scoreboard players set spine_height value 88

#Attempt to build the spine
function tid:misc/intro_spine_trace

#If the spine built successfully, build the last little bit under the pillar
execute if score success value matches 1 run fill ~ ~-1 ~ ~1 ~-8 ~1 stone_bricks
