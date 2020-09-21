#Join the players' team so it won't attack players
team join players @s

#If it is not angry at anything, find something to attack
execute if entity @s[nbt={AngerTime:0}] run function tid:gameplay/ai_summon_anger