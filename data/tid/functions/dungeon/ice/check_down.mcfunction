function tid:dungeon/ice/room_checks

#Attempt to generate another piece
execute unless score @s failed matches 1.. if predicate tid:random_70 positioned ~ ~-12 ~ if blocks ~ ~128 ~ ~13 ~139 ~13 1001 1 1001 all run function tid:dungeon/ice/select_tower

#If not, always try to generate a bottom piece
execute positioned ~2 ~-5 ~2 if blocks ~ ~128 ~ ~9 ~132 ~9 1001 1 1001 all run function tid:dungeon/ice/select_towerbottom

#If neither succeeded, just kill this piece
scoreboard players set @s failed 1
kill @s
