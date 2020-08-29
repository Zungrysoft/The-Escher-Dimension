#North
execute if predicate tid:random_50 positioned ~ ~ ~-32 if blocks ~ ~128 ~ ~31 ~154 ~31 1000 1 1000 all run function tid:dungeon/station/cave_expand

#East
execute if predicate tid:random_50 positioned ~32 ~ ~ if blocks ~ ~128 ~ ~31 ~154 ~31 1000 1 1000 all run function tid:dungeon/station/cave_expand

#West
execute if predicate tid:random_50 positioned ~-32 ~ ~ if blocks ~ ~128 ~ ~31 ~154 ~31 1000 1 1000 all run function tid:dungeon/station/cave_expand

#Up
execute if predicate tid:random_70 positioned ~ ~27 ~ if blocks ~ ~128 ~ ~31 ~154 ~31 1000 1 1000 all run function tid:dungeon/station/cave_expand

#South and down directions are protected from going too far and smothering the other dungeons
function tid:update_coords

#Down
execute if predicate tid:random_50 positioned ~ ~-27 ~ if score @s z matches ..-7 if blocks ~ ~101 ~ ~31 ~127 ~31 1 1 1 all run function tid:dungeon/station/cave_expand

#South
execute if predicate tid:random_50 positioned ~ ~ ~32 if score @s y matches 65.. if blocks ~ ~128 ~32 ~31 ~154 ~63 1 1 1 all run function tid:dungeon/station/cave_expand

#Remove one try from the station handler.
scoreboard players remove @e[tag=station_handler,limit=1] tries 1

#If the station handler is at a low number of tries, mark this as an edge piece. Edge pieces have more gold.
execute if score @e[tag=station_handler,limit=1] tries matches ..15 run scoreboard players set @s counter 1