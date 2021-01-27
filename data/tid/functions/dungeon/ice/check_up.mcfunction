function tid:dungeon/ice/room_checks

#Attempt to generate another piece
execute unless score @s failed matches 1.. if predicate tid:random_70 if blocks ~ ~128 ~ ~13 ~139 ~13 1033 1 1033 all if blocks ~ ~140 ~ ~13 ~154 ~13 1001 1 1001 all run function tid:dungeon/ice/select_tower

#If not, always try to generate a topper
execute if blocks ~ ~128 ~ ~13 ~139 ~13 1033 1 1033 all run function tid:dungeon/ice/select_towertop

#If neither succeeded, just kill this piece
scoreboard players set @s failed 1
kill @s
