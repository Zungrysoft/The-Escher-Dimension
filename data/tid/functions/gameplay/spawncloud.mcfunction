#Handles artificial monster spawners
#Allows bypassing of normal spawn checks like with light level
execute if entity @s[tag=skeleton] run summon skeleton
execute if entity @s[tag=blaze] run summon blaze
execute if entity @s[tag=bat_skeleton] run summon bat ~ ~ ~ {Passengers:[{id:skeleton,HandItems:[{id:bow,Count:1}],HandDropChances:[0F]}]}
execute if entity @s[tag=vex] run summon vex ~ ~ ~ {Health:8,Tags:["keep"]}

#War pigs
#Done using spawnclouds to circumvent a bug that lags the game with zombie pigman spawners
#First, ensure there aren't too many others nearby
execute store result score temp value if entity @e[type=minecraft:zombified_piglin,tag=war_pig,distance=0..20]
#Then spawn them
execute unless score temp value matches 9.. if entity @s[tag=war_pig_1] if predicate tid:dark run function tid:custom_mobs/war_pig_1
execute unless score temp value matches 9.. if entity @s[tag=war_pig_2] if predicate tid:dark run function tid:custom_mobs/war_pig_2
execute unless score temp value matches 9.. if entity @s[tag=war_pig_3] if predicate tid:dark run function tid:custom_mobs/war_pig_3
execute unless score temp value matches 9.. if entity @s[tag=war_pig_4] run function tid:custom_mobs/war_pig_4
execute unless score temp value matches 9.. if entity @s[tag=war_pig_mutant] if predicate tid:dark run function tid:custom_mobs/war_pig_mutant

#Killer bunny
#First, ensure there aren't too many others nearby
execute if entity @s[tag=killer_bunny] store result score temp value if entity @e[type=minecraft:rabbit,distance=0..20]
#Then spawn them
execute if entity @s[tag=killer_bunny] unless score temp value matches 5.. if predicate tid:dark run function tid:custom_mobs/killer_bunny

#Drowned
#First, ensure there aren't too many others nearby
execute if entity @s[tag=drowned] store result score temp value if entity @e[type=minecraft:drowned,distance=0..20]
#Then spawn them
execute if entity @s[tag=drowned] unless score temp value matches 5.. if block ~ ~ ~ water run summon drowned ~ ~ ~ {HandItems:[{id:"minecraft:trident",Count:1b}]}

#Drowned
#First, ensure there aren't too many others nearby
execute if entity @s[tag=auto] store result score temp value if entity @e[type=minecraft:zombie,tag=auto,distance=0..25]
#Then spawn them
execute if entity @s[tag=auto] unless score temp value matches 10.. if predicate tid:dark run function tid:custom_mobs/auto

#Kill at the end
kill @s
