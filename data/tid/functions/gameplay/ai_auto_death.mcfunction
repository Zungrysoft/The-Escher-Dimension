#Death Sound
scoreboard players set temp2 value 0
execute if predicate tid:random_50 run scoreboard players add temp2 value 1
execute if predicate tid:random_50 run scoreboard players add temp2 value 2
execute if score temp2 value matches 0 run playsound minecraft:entity.iron_golem.repair hostile @a ~ ~ ~ 1.3 0.65
execute if score temp2 value matches 1 run playsound minecraft:entity.iron_golem.repair hostile @a ~ ~ ~ 1.3 0.70
execute if score temp2 value matches 2 run playsound minecraft:entity.iron_golem.repair hostile @a ~ ~ ~ 1.3 0.75
execute if score temp2 value matches 3 run playsound minecraft:entity.iron_golem.repair hostile @a ~ ~ ~ 1.3 0.80

#Hurt Sound
playsound minecraft:entity.iron_golem.damage hostile @a

#Kill dropped item
kill @s
