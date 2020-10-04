#Teleporter to and from Hellion
execute if score temp value matches 0 in tid:layer_hellion positioned 0 183 0 run function tid:general/teleporter_teleport_run
execute if score temp value matches 1 in tid:layer_1 at @e[name="teleporter",nbt={Color:0},tag=open,limit=1,sort=random] positioned ~-1 ~ ~-1 run function tid:general/teleporter_teleport_run
execute if score temp value matches 1 in tid:layer_1 unless entity @e[name="teleporter",nbt={Color:0},tag=open,limit=1,sort=random] positioned 0 55 0 run function tid:general/teleporter_teleport_run

#Teleporter to and from Layer 3
execute if score temp value matches 2 in tid:layer_3 positioned 0 55 0 run function tid:general/teleporter_teleport_run
execute if score temp value matches 3 in tid:layer_2 at @e[name="teleporter",nbt={Color:2},tag=open,limit=1,sort=random] positioned ~-1 ~ ~-1 run function tid:general/teleporter_teleport_run
execute if score temp value matches 3 in tid:layer_2 unless entity @e[name="teleporter",nbt={Color:2},tag=open,limit=1,sort=random] positioned 0 55 0 run function tid:general/teleporter_teleport_run

#Teleporter to and from Infernal Industries
execute if score temp value matches 4 in tid:layer_infernal positioned 0 55 0 run function tid:general/teleporter_teleport_run
execute if score temp value matches 5 in tid:layer_3 at @e[name="teleporter",nbt={Color:4},tag=open,limit=1,sort=random] positioned ~-1 ~ ~-1 run function tid:general/teleporter_teleport_run
execute if score temp value matches 5 in tid:layer_3 unless entity @e[name="teleporter",nbt={Color:4},tag=open,limit=1,sort=random] positioned 0 55 0 run function tid:general/teleporter_teleport_run

#Teleporter to and from The Jungle
execute if score temp value matches 6 in tid:layer_jungle positioned 0 193 0 run function tid:general/teleporter_teleport_run
execute if score temp value matches 7 in tid:layer_3 at @e[name="teleporter",nbt={Color:6},tag=open,limit=1,sort=random] positioned ~-1 ~ ~-1 run function tid:general/teleporter_teleport_run
execute if score temp value matches 7 in tid:layer_3 unless entity @e[name="teleporter",nbt={Color:6},tag=open,limit=1,sort=random] positioned 0 55 0 run function tid:general/teleporter_teleport_run

#Teleporter to and from Barbirusan Harbor
execute if score temp value matches 8 in tid:layer_sin positioned 0 183 0 run function tid:general/teleporter_teleport_run
execute if score temp value matches 9 in tid:layer_2 at @e[name="teleporter",nbt={Color:8},tag=open,limit=1,sort=random] positioned ~-1 ~ ~-1 run function tid:general/teleporter_teleport_run
execute if score temp value matches 9 in tid:layer_2 unless entity @e[name="teleporter",nbt={Color:8},tag=open,limit=1,sort=random] positioned 0 55 0 run function tid:general/teleporter_teleport_run

#Teleporter to and from Layer 2
execute if score temp value matches 10 in tid:layer_2 positioned 0 55 0 run function tid:general/teleporter_teleport_run
execute if score temp value matches 11 in tid:layer_1 at @e[name="teleporter",nbt={Color:10},tag=open,limit=1,sort=random] positioned ~-1 ~ ~-1 run function tid:general/teleporter_teleport_run
execute if score temp value matches 11 in tid:layer_1 unless entity @e[name="teleporter",nbt={Color:10},tag=open,limit=1,sort=random] positioned 0 55 0 run function tid:general/teleporter_teleport_run

#Teleporter to and from The Corridors
execute if score temp value matches 12 in tid:layer_finale positioned 0 55 0 run function tid:general/teleporter_teleport_run
execute if score temp value matches 13 in tid:layer_1 positioned 0 55 0 run function tid:general/teleporter_teleport_run

#Teleporter command for reference
#/summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"teleporter\"",Color:6b}