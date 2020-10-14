#Add to the number of branches
scoreboard players add moon_flower_branches value 1

#Set the number of of moves on this branch
scoreboard players set calc1 value 2
scoreboard players operation moon_flower_branchmovesleft value /= calc1 value

#Advance the seed
function tid:dungeon/moon/flower/seed_advance

#Decide which direction to branch
execute if score temp value matches 1..5 run scoreboard players set moon_flower_mode value 1
execute if score temp value matches 1..5 positioned ~ ~ ~-1 run function tid:dungeon/moon/flower/main
execute if score temp value matches 6..10 run scoreboard players set moon_flower_mode value 2
execute if score temp value matches 6..10 positioned ~1 ~ ~ run function tid:dungeon/moon/flower/main
execute if score temp value matches 11..15 run scoreboard players set moon_flower_mode value 3
execute if score temp value matches 11..15 positioned ~ ~ ~1 run function tid:dungeon/moon/flower/main
execute if score temp value matches 16..20 run scoreboard players set moon_flower_mode value 4
execute if score temp value matches 16..20 positioned ~-1 ~ ~ run function tid:dungeon/moon/flower/main

#After branching, subtract from the number of branches
scoreboard players remove moon_flower_branches value 1

#Then, figure out the branchmovesleft
#branchmovesleft = movesleft/(branches^2)
scoreboard players operation moon_flower_branchmovesleft value = moon_flower_movesleft value
scoreboard players operation moon_flower_branchmovesleft value /= moon_flower_branches value
scoreboard players operation moon_flower_branchmovesleft value /= moon_flower_branches value
