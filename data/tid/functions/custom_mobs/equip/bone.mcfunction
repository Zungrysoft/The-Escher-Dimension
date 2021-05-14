#Decide whether to put it in their hand or their mouth
scoreboard players set temp3 value 0
execute if predicate tid:random_30 run scoreboard players set temp3 value 1

#Hand
execute if score temp3 value matches 0 run data modify entity @s HandItems[0] set value {id:"minecraft:bone",Count:1,tag:{display:{Name:'[{"text":"Sharpened Bone","italic":false,"color":"red"}]'},Enchantments:[{id:sharpness,lvl:7}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.2,Operation:1,UUID:[I;-121413,19625,165721,-39250],Slot:mainhand,Name:"generic.movement_speed"}]}}

#Mouth
execute if score temp3 value matches 1 run data modify entity @s ArmorItems[3] set value {id:"minecraft:bone",Count:1,tag:{display:{Name:'[{"text":"Sharpened Bone","italic":false,"color":"red"}]'},Enchantments:[{id:sharpness,lvl:7}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.2,Operation:1,UUID:[I;-121413,19625,165721,-39250],Slot:mainhand,Name:"generic.movement_speed"}]}}
