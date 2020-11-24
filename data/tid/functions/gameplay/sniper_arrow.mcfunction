#Increase the damage after each frame
execute store result entity @s[nbt={inGround:0b}] damage double 0.0113 run data get entity @s damage 100

#If the arrow hits a block, set its damage to 0
#Prevents a weird case where arrows stuck in blocks can do insane damage if that block is broken
execute if entity @s[nbt={inGround:1b}] run data modify entity @s damage set value 0
