#Pick the structure
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2
execute if predicate tid:random_50 run scoreboard players add temp value 4
execute if predicate tid:random_50 run scoreboard players add temp value 8
execute if predicate tid:random_50 run scoreboard players add temp value 16

#Ensure there is some room to build
execute unless blocks ~-5 ~128 ~-5 ~20 ~148 ~20 1001 1 1001 all run scoreboard players set temp value -1

#For the first few structures, also build an explosive drill directly above it
execute if score temp value matches 0.. if score power_drills value matches 0.. positioned ~-10 111 ~-10 if blocks ~ ~128 ~ ~26 ~143 ~26 1001 1 1001 all run function tid:dungeon/infernal/select_power_drill

#Build it
execute if score temp value matches 0..31 run function tid:dungeon/infernal/tanktower_start
