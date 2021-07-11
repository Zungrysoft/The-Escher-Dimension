#Decide what direction to go
scoreboard players set temp4 value 0
execute if predicate tid:random_50 run scoreboard players set temp4 value 1
execute if predicate tid:random_33 run scoreboard players set temp4 value 2
execute if predicate tid:random_25 run scoreboard players set temp4 value 3
execute if predicate tid:random_40 run scoreboard players set temp4 value 4

#Platform
execute if score temp4 value matches 0 run fill ~ ~ ~ ~1 ~ ~1 blackstone replace lava
execute if score temp4 value matches 1 run fill ~ ~ ~ ~-1 ~ ~1 blackstone replace lava
execute if score temp4 value matches 2 run fill ~ ~ ~ ~1 ~ ~-1 blackstone replace lava
execute if score temp4 value matches 3 run fill ~ ~ ~ ~-1 ~ ~-1 blackstone replace lava
execute if score temp4 value matches 4 run fill ~ ~ ~ ~ ~ ~ blackstone replace lava
