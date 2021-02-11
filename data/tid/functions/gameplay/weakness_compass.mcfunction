#Apply the weakness effect if the player is holding the compass
execute if entity @s[predicate=tid:item/weakness_compass] as @e[type=#tid:monster,distance=0..12] at @s run function tid:gameplay/weakness_compass_effect
