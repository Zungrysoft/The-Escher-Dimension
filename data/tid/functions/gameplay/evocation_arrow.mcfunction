#Determine if it has been initialized yet
execute unless entity @s[tag=init] run scoreboard players set @s counter1 0
tag @s add init

#Count down
scoreboard players add @s counter1 1

#If we've existed long enough, summon fangs
execute if score @s counter1 matches 2.. run function tid:gameplay/evocation_arrow_trace

#If we've existed way too long, kill it and all fangs (safety anti-lag check)
execute if score @s counter1 matches 500.. run kill @e[type=minecraft:evoker_fangs]
execute if score @s counter1 matches 500.. run kill @s
