#Pick a random number between 0 and 15 for choosing which mob to spawn
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2
execute if predicate tid:random_50 run scoreboard players add temp value 4
execute if predicate tid:random_50 run scoreboard players add temp value 8

#War Pig 2
execute if score temp value matches 0..10 run function tid:custom_mobs/war_pig_2
execute if score temp value matches 11..15 run function tid:custom_mobs/fire_fountain
