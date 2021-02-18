#Handles artificial monster spawners
#Allows bypassing of normal spawn checks like with light level
execute if entity @s[tag=skeleton] run summon skeleton
execute if entity @s[tag=blaze] run summon blaze
execute if entity @s[tag=bat_skeleton] run summon bat ~ ~ ~ {Passengers:[{id:skeleton,HandItems:[{id:bow,Count:1}],HandDropChances:[0F]}]}
execute if entity @s[tag=war_pig_1] if predicate tid:dark run function tid:custom_mobs/war_pig_1
execute if entity @s[tag=war_pig_2] if predicate tid:dark run function tid:custom_mobs/war_pig_2
execute if entity @s[tag=war_pig_3] if predicate tid:dark run function tid:custom_mobs/war_pig_3
execute if entity @s[tag=war_pig_4] run function tid:custom_mobs/war_pig_4
execute if entity @s[tag=war_pig_mutant] if predicate tid:dark run function tid:custom_mobs/war_pig_mutant
execute if entity @s[tag=vex] run summon vex ~ ~ ~ {Health:8,Tags:["keep"]}

#Kill at the end
kill @s
