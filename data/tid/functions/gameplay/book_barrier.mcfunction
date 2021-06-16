#Check if the player is holding it
execute if entity @s[predicate=tid:item/book_barrier] run function tid:gameplay/book_barrier_effect
execute if entity @s[predicate=tid:item/book_barrier_2] run function tid:gameplay/book_barrier_effect_2
