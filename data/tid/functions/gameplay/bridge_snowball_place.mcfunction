#If the snowball is far away enough, place the snow and kill it
execute unless entity @e[type=snowball,distance=..2] unless entity @p[distance=0..2] if block ~ ~ ~ air run setblock ~ ~ ~ snow_block
execute unless entity @e[type=snowball,distance=..2] run kill @s

#If the marker is too old, kill it
execute store result score @s counter1 run data get entity @s Age
execute if score @s counter1 matches 15.. run kill @s
