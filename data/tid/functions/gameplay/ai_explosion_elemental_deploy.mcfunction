#Drop the tnt
summon tnt ~ ~1.2 ~ {Fuse:80,Motion:[0d,0.1d,0d],Tags:["elemental"]}
#Remove tnt from head
data modify entity @s ArmorItems[3] set value {}
#Set the deployed tag
tag @s remove tnt
#Play sound effect
playsound minecraft:entity.tnt.primed hostile @a