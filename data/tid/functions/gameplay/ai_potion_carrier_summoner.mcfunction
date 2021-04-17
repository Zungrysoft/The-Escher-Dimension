#Maybe summon a priest
execute if predicate tid:random_10 positioned ~ ~ ~0.1 run function tid:custom_mobs/potion_carrier_healing
execute if predicate tid:random_05 positioned ~ ~ ~-0.1 run function tid:custom_mobs/potion_carrier_swiftness
execute if predicate tid:random_05 positioned ~0.1 ~ ~ run function tid:custom_mobs/potion_carrier_strength
execute if predicate tid:random_05 positioned ~-0.1 ~ ~ run function tid:custom_mobs/spellcaster

#Remove the tag
tag @s remove potion_carrier_summoner
