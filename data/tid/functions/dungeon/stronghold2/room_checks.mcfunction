scoreboard players add @s tries 1
scoreboard players set @s failed 0
execute if score stronghold2_spires value matches ..0 run function tid:update_coords

execute if score @s tries matches 70.. run scoreboard players set @s failed 1
execute if score stronghold2_rooms value matches ..0 run scoreboard players set @s failed 1

execute if score @s failed matches 1.. run kill @s