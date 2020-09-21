#Grant the effect
effect clear @p minecraft:health_boost
execute if score temp value matches 1 run effect give @p minecraft:health_boost 999999 0 true
execute if score temp value matches 2 run effect give @p minecraft:health_boost 999999 1 true
execute if score temp value matches 3 run effect give @p minecraft:health_boost 999999 2 true
execute if score temp value matches 4 run effect give @p minecraft:health_boost 999999 3 true
execute if score temp value matches 5 run effect give @p minecraft:health_boost 999999 4 true
execute if score temp value matches 6 run effect give @p minecraft:health_boost 999999 5 true
execute if score temp value matches 7 run effect give @p minecraft:health_boost 999999 6 true
execute if score temp value matches 8 run effect give @p minecraft:health_boost 999999 7 true
execute if score temp value matches 9 run effect give @p minecraft:health_boost 999999 8 true
execute if score temp value matches 10 run effect give @p minecraft:health_boost 999999 9 true
execute if score temp value matches 11 run effect give @p minecraft:health_boost 999999 10 true
execute if score temp value matches 12 run effect give @p minecraft:health_boost 999999 11 true
execute if score temp value matches 13 run effect give @p minecraft:health_boost 999999 12 true
execute if score temp value matches 14 run effect give @p minecraft:health_boost 999999 13 true
execute if score temp value matches 15 run effect give @p minecraft:health_boost 999999 14 true
execute if score temp value matches 16 run effect give @p minecraft:health_boost 999999 15 true
execute if score temp value matches 17 run effect give @p minecraft:health_boost 999999 16 true
execute if score temp value matches 18 run effect give @p minecraft:health_boost 999999 17 true
execute if score temp value matches 19 run effect give @p minecraft:health_boost 999999 18 true
execute if score temp value matches 20.. run effect give @p minecraft:health_boost 999999 19 true

#Update the score value
scoreboard players operation @s heart_boost = temp value