#Summon the stands
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"anchor\""}

execute if score generated_gold_stalag value matches 0 run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"scatter\"",Tags:["gold"]}
execute if score generated_diamond_stalag value matches 0 run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"scatter\"",Tags:["diamond"]}
execute if score generated_iron_stalag value matches 0 run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"scatter\"",Tags:["iron"]}
execute if score generated_lapis_stalag value matches 0 run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"scatter\"",Tags:["lapis"]}

#Spread the stands around, then return them to the correct y value
spreadplayers ~ ~ 4 5 false @e[type=area_effect_cloud,name="scatter"]
execute as @e[type=area_effect_cloud,name="scatter"] run data modify entity @s Pos[1] set from entity @e[type=area_effect_cloud,limit=1,name="anchor"] Pos[1]

#Place the stalag
scoreboard players set finale_stalag_type value 1
execute at @e[type=area_effect_cloud,name="scatter",tag=lapis] run function tid:misc/finale_stalag
scoreboard players set finale_stalag_type value 2
execute at @e[type=area_effect_cloud,name="scatter",tag=iron] run function tid:misc/finale_stalag
scoreboard players set finale_stalag_type value 3
execute at @e[type=area_effect_cloud,name="scatter",tag=gold] run function tid:misc/finale_stalag
scoreboard players set finale_stalag_type value 4
execute at @e[type=area_effect_cloud,name="scatter",tag=diamond] run function tid:misc/finale_stalag

#Kill the entities
kill @e[type=area_effect_cloud,name="scatter"]
kill @e[type=area_effect_cloud,name="anchor"]
