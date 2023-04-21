#Maybe summon a priest
execute if predicate tid:random_40 unless entity @e[type=minecraft:zombie,tag=broodmother,distance=0..10,limit=1] positioned ~ ~ ~0.1 run function tid:custom_mobs/broodmother

#Remove the tag
tag @s remove broodmother_summoner
