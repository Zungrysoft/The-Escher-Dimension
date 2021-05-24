#If it is not angry at anything, find something to attack
execute if entity @s[nbt={AngerTime:0}] run function tid:gameplay/ai_summon_anger

#Count up its counter until it gets wither
scoreboard players add @s counter1 1
execute if score @s counter1 matches 2400..2410 run effect give @s minecraft:wither 99999 2 true

#Join the players' team so it won't attack players
execute if score @s counter1 matches 0..10 run team join players @s
