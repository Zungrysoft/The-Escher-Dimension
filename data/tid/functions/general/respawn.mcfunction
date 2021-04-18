#Clear out the space
setblock 0 55 0 air destroy
setblock 0 56 0 air destroy

#Give a starting items
give @s wooden_sword
give @s wooden_pickaxe

#Determine where the player should be teleported
scoreboard players set temp9 value 0
execute if entity @s[advancements={tid:layer_1/root=true}] run scoreboard players set temp9 value 1

#Do the teleport
execute if score temp9 value matches 0 in tid:layer_intro run tp @s 0 223 0 180 0
execute if score temp9 value matches 1 in tid:layer_1 run tp @s 0 55 0 180 0

#Respawn the diorite if the player dies in the intro area
execute if score temp9 value matches 0 in tid:layer_intro at @e[type=area_effect_cloud,tag=diorite] run fill ~1 ~ ~1 ~-1 ~2 ~-1 diorite replace air
