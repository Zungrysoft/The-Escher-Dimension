#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#Decide the random value
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2
execute if predicate tid:random_50 run scoreboard players add temp value 4
execute if predicate tid:random_50 run scoreboard players add temp value 16

#Levitation Dispenser
execute if score temp value matches 0..9 run function tid:misc/mutant_levitation_dispenser

#Mutant Spawner
execute if score temp value matches 10..19 run function tid:misc/mutant_random_spawner

#Maybe Chest
execute if score temp value matches 20..31 run function tid:misc/mutant_maybe_chest
