#Decide how long the chain should be
scoreboard players set @s counter1 1
execute if predicate tid:random_50 run scoreboard players set @s counter1 2
execute if predicate tid:random_33 run scoreboard players set @s counter1 3
execute if predicate tid:random_25 run scoreboard players set @s counter1 4
execute if predicate tid:random_20 run scoreboard players set @s counter1 5
execute if predicate tid:random_15 run scoreboard players set @s counter1 6
execute if predicate tid:random_15 run scoreboard players set @s counter1 7
execute if predicate tid:random_10 run scoreboard players set @s counter1 8

execute if score @s counter1 matches 1 run setblock ~ ~-1 ~ gilded_blackstone
execute if score @s counter1 matches 1 run setblock ~ ~ ~ chain

execute if score @s counter1 matches 2 run setblock ~ ~-2 ~ gilded_blackstone
execute if score @s counter1 matches 2 run fill ~ ~ ~ ~ ~-1 ~ chain

execute if score @s counter1 matches 3 run setblock ~ ~-3 ~ gilded_blackstone
execute if score @s counter1 matches 3 run fill ~ ~ ~ ~ ~-2 ~ chain

execute if score @s counter1 matches 4 run setblock ~ ~-4 ~ gilded_blackstone
execute if score @s counter1 matches 4 run fill ~ ~ ~ ~ ~-3 ~ chain

execute if score @s counter1 matches 5 run setblock ~ ~-5 ~ gilded_blackstone
execute if score @s counter1 matches 5 run fill ~ ~ ~ ~ ~-4 ~ chain

execute if score @s counter1 matches 6 run setblock ~ ~-6 ~ gilded_blackstone
execute if score @s counter1 matches 6 run fill ~ ~ ~ ~ ~-5 ~ chain

execute if score @s counter1 matches 7 run setblock ~ ~-7 ~ gilded_blackstone
execute if score @s counter1 matches 7 run fill ~ ~ ~ ~ ~-6 ~ chain

execute if score @s counter1 matches 8 run setblock ~ ~-8 ~ gilded_blackstone
execute if score @s counter1 matches 8 run fill ~ ~ ~ ~ ~-7 ~ chain