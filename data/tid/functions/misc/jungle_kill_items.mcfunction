#Kill all items not near players in jungle
execute as @e[type=item,predicate=tid:in_layer_jungle] at @s unless entity @a[distance=0..12] run kill @s
