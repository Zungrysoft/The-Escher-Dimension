#Drop the tnt
summon tnt ~ ~1 ~ {Fuse:80}
#Remove tnt from head
data modify entity @s ArmorItems[3] set value {}
#Set the deployed tag
tag @s remove tnt
#Play sound effect
playsound minecraft:entity.tnt.primed hostile @a