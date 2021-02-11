#Apply the slowness effect if the player is holding the clock
execute if entity @s[predicate=tid:item/slow_clock] as @e[type=#tid:monster,distance=0..12] at @s run function tid:gameplay/slow_clock_effect
