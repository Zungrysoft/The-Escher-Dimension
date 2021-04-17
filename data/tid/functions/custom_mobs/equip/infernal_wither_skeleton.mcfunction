#This function file puts extra armor and enchantments on skeletons in Infernal Industries

#Set armor drop chances to zero
function tid:custom_mobs/equip/reset_armor

#Add randomized chainmail armor
function tid:custom_mobs/equip/armor_chainmail

#Add randomized netherite armor
function tid:custom_mobs/equip/armor_netherite

#Give it a bow
data modify entity @s HandItems[0] set value {id:"minecraft:bow",Count:1,tag:{Enchantments:[{id:"minecraft:power",lvl:3}]}}

#Maybe give it a fire aspect sword or axe instead
execute if predicate tid:random_90 run data modify entity @s HandItems[0] set value {id:"minecraft:iron_sword",Count:1,tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:1}]}}
execute if predicate tid:random_20 run data modify entity @s HandItems[0] set value {id:"minecraft:iron_axe",Count:1,tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:1}]}}

#Add the tag so we don't armor this mob again
tag @s add armored
