scoreboard players set @s succeeded 0
scoreboard players set @s counter1 9

execute positioned ~1 ~ ~ if predicate tid:random_50 run function tid:misc/lava_move_count
execute positioned ~1 ~ ~ if score @s counter1 matches ..2 run function tid:misc/lava_move_build

execute if score @s succeeded matches 0 positioned ~-1 ~ ~ if predicate tid:random_66 run function tid:misc/lava_move_count
execute if score @s succeeded matches 0 positioned ~-1 ~ ~ if score @s counter1 matches ..2 run function tid:misc/lava_move_build

execute if score @s succeeded matches 0 positioned ~ ~ ~1 if predicate tid:random_75 run function tid:misc/lava_move_count
execute if score @s succeeded matches 0 positioned ~ ~ ~1 if score @s counter1 matches ..2 run function tid:misc/lava_move_build

execute if score @s succeeded matches 0 positioned ~ ~ ~-1 if predicate tid:random_90 run function tid:misc/lava_move_count
execute if score @s succeeded matches 0 positioned ~ ~ ~-1 if score @s counter1 matches ..2 run function tid:misc/lava_move_build

execute if score @s succeeded matches 0 run kill @s