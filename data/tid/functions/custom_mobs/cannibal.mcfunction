summon minecraft:husk ~ ~ ~ {CustomName:'[{"text":"Lunar Cannibal"}]',ArmorDropChances:[0F,0F,0.01F,0.05F],HandDropChances:[0.05F,0F],ArmorItems:[{},{},{id:leather_chestplate,tag:{display:{color:15913899}},Count:1},{}],HandItems:[{},{}],Attributes:[{Name:"generic.movement_speed",Base:0.34f}],Tags:["new"]}
execute as @e[tag=new] run function tid:custom_mobs/equip/bone
tag @e[tag=new] remove new
