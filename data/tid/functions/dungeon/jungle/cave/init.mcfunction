#Starting direction
execute if predicate tid:random_50 run tp @s ~ ~ ~ ~60 ~
execute if predicate tid:random_33 run tp @s ~ ~ ~ ~120 ~
execute if predicate tid:random_25 run tp @s ~ ~ ~ ~180 ~
execute if predicate tid:random_20 run tp @s ~ ~ ~ ~240 ~
execute if predicate tid:random_15 run tp @s ~ ~ ~ ~300 ~

#Starting path
scoreboard players set @s counter1 0
execute if predicate tid:random_50 run scoreboard players set @s counter1 1
execute if predicate tid:random_33 run scoreboard players set @s counter1 2
execute if predicate tid:random_25 run scoreboard players set @s counter1 3
execute if predicate tid:random_20 run scoreboard players set @s counter1 4
execute if predicate tid:random_15 run scoreboard players set @s counter1 5
execute if predicate tid:random_15 run scoreboard players set @s counter1 6
execute if predicate tid:random_10 run scoreboard players set @s counter1 7
execute if predicate tid:random_09 run scoreboard players set @s counter1 8
execute if predicate tid:random_08 run scoreboard players set @s counter1 9
execute if predicate tid:random_07 run scoreboard players set @s counter1 10
execute if predicate tid:random_07 run scoreboard players set @s counter1 11