#North
scoreboard players set temp value 0
execute if predicate tid:random_50 unless entity @s[tag=north] positioned ~ ~ ~-32 if blocks ~ ~128 ~ ~31 ~154 ~31 1001 1 1001 all run scoreboard players set temp value 1
execute if score temp value matches 1 positioned ~ ~ ~-32 run function tid:dungeon/station/cave_expand
execute if score temp value matches 1 run tag @s add north

#East
scoreboard players set temp value 0
execute if predicate tid:random_50 unless entity @s[tag=east] positioned ~32 ~ ~ if blocks ~ ~128 ~ ~31 ~154 ~31 1001 1 1001 all run scoreboard players set temp value 1
execute if score temp value matches 1 positioned ~32 ~ ~ run function tid:dungeon/station/cave_expand
execute if score temp value matches 1 run tag @s add east

#West
scoreboard players set temp value 0
execute if predicate tid:random_50 unless entity @s[tag=west] positioned ~-32 ~ ~ if blocks ~ ~128 ~ ~31 ~154 ~31 1001 1 1001 all run scoreboard players set temp value 1
execute if score temp value matches 1 positioned ~-32 ~ ~ run function tid:dungeon/station/cave_expand
execute if score temp value matches 1 run tag @s add west

#Up
scoreboard players set temp value 0
execute if predicate tid:random_70 unless entity @s[tag=up] positioned ~ ~27 ~ if blocks ~ ~128 ~ ~31 ~154 ~31 1001 1 1001 all run scoreboard players set temp value 1
execute if score temp value matches 1 positioned ~ ~27 ~ run function tid:dungeon/station/cave_expand
execute if score temp value matches 1 run tag @s add up

#South and down directions are protected from going too far and smothering the other dungeons
function tid:update_coords

#Down
scoreboard players set temp value 0
execute if predicate tid:random_50 unless entity @s[tag=down] positioned ~ ~-27 ~ if score @s z matches ..-7 if blocks ~ ~101 ~ ~31 ~127 ~31 1 1 1 all run scoreboard players set temp value 1
execute if score temp value matches 1 positioned ~ ~-27 ~ run function tid:dungeon/station/cave_expand
execute if score temp value matches 1 run tag @s add down

#South
scoreboard players set temp value 0
execute if predicate tid:random_50 unless entity @s[tag=south] positioned ~ ~ ~32 if score @s y matches 65.. if blocks ~ ~128 ~32 ~31 ~154 ~63 1 1 1 all run scoreboard players set temp value 1
execute if score temp value matches 1 positioned ~ ~ ~32 run function tid:dungeon/station/cave_expand
execute if score temp value matches 1 run tag @s add south

#Remove one try from the station handler.
scoreboard players remove layer_3_handler_counter value 1

#If the station handler is at a low number of tries, mark this as an edge piece. Edge pieces have more gold.
execute if score @e[tag=station_handler,limit=1] tries matches ..15 run scoreboard players set @s counter 1

