#Pick a random effect
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2
execute if predicate tid:random_50 run scoreboard players add temp value 4
execute if predicate tid:random_50 run scoreboard players add temp value 8

#Grant it to the player
execute if score temp value matches 0..1 run effect give @s strength 300 0
execute if score temp value matches 2..3 run effect give @s speed 300 0
execute if score temp value matches 4 run effect give @s haste 300 2
execute if score temp value matches 5 run effect give @s instant_health 1 1
execute if score temp value matches 6 run effect give @s jump_boost 300 1
execute if score temp value matches 7 run effect give @s regeneration 300 0
execute if score temp value matches 8 run effect give @s resistance 300 0
execute if score temp value matches 9 run effect give @s fire_resistance 300 0
execute if score temp value matches 10 run effect give @s water_breathing 300 0
execute if score temp value matches 11 run effect give @s invisibility 300 0
execute if score temp value matches 12 run effect give @s night_vision 300 0
execute if score temp value matches 13 run effect give @s luck 300 0
execute if score temp value matches 14 run effect give @s slow_falling 300 0
execute if score temp value matches 15 run effect give @s dolphins_grace 300 0
