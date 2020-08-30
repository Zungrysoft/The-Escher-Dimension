#Phase 1: Randomly generate the pockets of air within the yellow wool zone
scoreboard players add @s tries 1
execute if predicate tid:random_30 run function tid:dungeon/station/generate_air_pocket
execute if score @s tries matches 11.. run scoreboard players set @s phase 2

