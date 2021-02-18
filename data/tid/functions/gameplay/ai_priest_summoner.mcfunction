#Maybe summon a priest
execute if predicate tid:random_20 positioned ~ ~ ~0.1 run function tid:custom_mobs/priest

#Remove the tag
tag @s remove priest_summoner
