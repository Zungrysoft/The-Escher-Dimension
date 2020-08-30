execute if score temp value matches 0 in tid:layer_hellion run tp @s 0 183 0
execute if score temp value matches 1 in tid:layer_1 at @e[name="teleporter",nbt={Color:0},tag=open,limit=1,sort=random] run tp @s ~-1 ~ ~-1
execute if score temp value matches 2 in tid:layer_4 run tp @s 0 55 0
execute if score temp value matches 3 in tid:layer_1 at @e[name="teleporter",nbt={Color:2},tag=open,limit=1,sort=random] run tp @s ~-1 ~ ~-1

#Teleporter command for reference
#/summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"teleporter\"",Color:0b}