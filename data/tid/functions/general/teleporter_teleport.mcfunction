execute if data storage minecraft:tid {temp:0} in tid:layer_hellion run tp @s 0 183 0
execute if data storage minecraft:tid {temp:1} in tid:layer_1 at @e[name="teleporter",nbt={Color:0},tag=open,limit=1,sort=random] run tp @s ~-1 ~ ~-1

#Teleporter command for reference
#/summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"teleporter\"",Color:0b}