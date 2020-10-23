#Reduce their health
execute unless entity @s[tag=edited] run attribute @s minecraft:generic.max_health base set 6
execute unless entity @s[tag=edited] run data modify entity @s Health set value 6
execute unless entity @s[tag=edited] run tag @s add edited

#Kill them if they go too far from the evoker
execute as @e[type=minecraft:vex] at @s unless entity @e[type=evoker,distance=0..25] run kill @s