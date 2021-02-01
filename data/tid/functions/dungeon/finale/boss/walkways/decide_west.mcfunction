#Decide what to build
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players set temp value 1

#Build it
execute if score temp value matches 0 positioned ~-3 ~-2 ~-1 run function tid:dungeon/finale/boss/walkways/select_platform
execute if score temp value matches 1 positioned ~-4 ~-2 ~-1 run function tid:dungeon/finale/boss/walkways/select_stairs_west
