#Layer 1
execute if entity @s[predicate=tid:in_layer_1] run function tid:gameplay/replace_spawns_layer_1

#Layer 2
execute if entity @s[predicate=tid:in_layer_2] run function tid:gameplay/replace_spawns_layer_2

#Layer 3
execute if entity @s[predicate=tid:in_layer_3] run function tid:gameplay/replace_spawns_layer_3

#Hellion
execute if entity @s[predicate=tid:in_layer_hellion] run function tid:gameplay/replace_spawns_hellion

#Jungle
execute if entity @s[predicate=tid:in_layer_jungle] run function tid:gameplay/replace_spawns_jungle

#Infernal
execute if entity @s[predicate=tid:in_layer_infernal] run function tid:gameplay/replace_spawns_infernal

#Kill the source mob
tp @s ~ -100 ~
kill @s
