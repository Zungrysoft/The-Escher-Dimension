execute if score temp value matches 0 in tid:layer_hellion positioned 0 183 0 run function tid:general/teleporter_teleport_run
execute if score temp value matches 1 in tid:layer_1 at @e[name="teleporter",nbt={Color:0},tag=open,limit=1,sort=random] positioned ~-1 ~ ~-1 run function tid:general/teleporter_teleport_run
execute if score temp value matches 2 in tid:layer_3 positioned 0 55 0 run function tid:general/teleporter_teleport_run
execute if score temp value matches 3 in tid:layer_1 at @e[name="teleporter",nbt={Color:2},tag=open,limit=1,sort=random] positioned ~-1 ~ ~-1 run function tid:general/teleporter_teleport_run

#Teleporter command for reference
#/summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"teleporter\"",Color:0b}