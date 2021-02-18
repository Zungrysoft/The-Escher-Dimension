#Maybe summon a priest
execute if predicate tid:random_25 positioned ~ ~ ~0.5 run function tid:custom_mobs/priest

#Remove the tag
tag @s remove priest_summoner
