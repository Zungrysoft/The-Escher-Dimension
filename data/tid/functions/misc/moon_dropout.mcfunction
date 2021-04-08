#Determine if this dropout can even go anywhere
scoreboard players set temp8 value 0
execute if blocks ~1 ~ ~1 ~-1 ~-10 ~-1 1033 1 1001 all run scoreboard players set temp8 value 1

#Cover in floor and build a chest
execute if score temp8 value matches 0 run function tid:misc/moon_dropout_chest

#Build stairwell
execute if score temp8 value matches 1 run function tid:misc/moon_dropout_stairwell

#Kill marker
kill @s
