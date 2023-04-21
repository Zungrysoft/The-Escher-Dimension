#Maybe summon a priest
execute if predicate tid:random_30 unless entity @e[type=minecraft:zombie,tag=priest,distance=0..25,limit=1] positioned ~ ~ ~0.1 run function tid:custom_mobs/priest

#Remove the tag
tag @s remove priest_summoner
