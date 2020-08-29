#Prevents it from disappearing
data modify entity @s Age set value 5b

#Prevents it from being destroyed
data modify entity @s Invulnerable set value 1b
data modify entity @s Health set value 1000s

#If it ends up in a weird location, teleport it to the spawn in layer 1.
execute if score @s y matches 254.. in tid:layer_1 run tp @s 0 55 0
execute if score @s y matches 127..130 in tid:layer_1 run tp @s 0 55 0
execute if score @s y matches ..0 in tid:layer_1 run tp @s 0 55 0

#Floats in lava
execute if block ~ ~ ~ lava run data modify entity @s Motion set value [0,0,0]
execute if block ~ ~ ~ lava run tp @s ~ ~.1 ~
