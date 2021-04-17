#Determine if it has been initialized yet
execute unless entity @s[tag=init] run scoreboard players set @s counter1 2
tag @s add init

#Count down
scoreboard players remove @s counter1 1

#If we're at zero, summon another fang
execute if score @s counter1 matches ..0 run function tid:gameplay/evocation_arrow_trace
