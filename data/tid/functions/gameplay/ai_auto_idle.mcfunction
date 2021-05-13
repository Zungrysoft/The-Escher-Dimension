#Sound
playsound minecraft:entity.iron_golem.step hostile @a

#Reset the counter
scoreboard players set @s counter1 20
execute if predicate tid:random_50 run scoreboard players add @s counter1 1
execute if predicate tid:random_50 run scoreboard players add @s counter1 8
execute if predicate tid:random_50 run scoreboard players add @s counter1 16
execute if predicate tid:random_50 run scoreboard players add @s counter1 32
