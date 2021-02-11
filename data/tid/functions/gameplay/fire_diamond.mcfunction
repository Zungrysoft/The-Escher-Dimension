#Apply the levitation effect if the player is holding the item
execute if entity @s[predicate=tid:item/fire_diamond] as @e[type=#tid:living,distance=0..12] at @s run function tid:gameplay/fire_diamond_check
