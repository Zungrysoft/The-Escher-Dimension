#Summoned mobs only last a limited amount of time
effect give @s wither 999999 0 true
 
#If it is not angry at anything, find something to attack
execute if entity @s[nbt={AngerTime:0}] run function tid:gameplay/ai_summon_anger