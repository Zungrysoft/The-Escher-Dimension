#Decide which event to do
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2
execute if predicate tid:random_50 run scoreboard players add temp value 4
execute if predicate tid:random_50 run scoreboard players add temp value 8

#Select the event
execute if score temp value matches 0..7 run function tid:misc/soulsand_event_1
execute if score temp value matches 8..15 run function tid:misc/soulsand_event_2
