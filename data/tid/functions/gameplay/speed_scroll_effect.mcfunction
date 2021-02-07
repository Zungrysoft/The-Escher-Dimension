#Grant the effect
attribute @s minecraft:generic.movement_speed modifier remove 7c183dac-4e05-4f1a-ae04-8ee579aab17f
execute if score temp value matches 1 run attribute @s minecraft:generic.movement_speed modifier add 7c183dac-4e05-4f1a-ae04-8ee579aab17f speed_boost 0.2 multiply
execute if score temp value matches 2 run attribute @s minecraft:generic.movement_speed modifier add 7c183dac-4e05-4f1a-ae04-8ee579aab17f speed_boost 0.4 multiply
execute if score temp value matches 3 run attribute @s minecraft:generic.movement_speed modifier add 7c183dac-4e05-4f1a-ae04-8ee579aab17f speed_boost 0.6 multiply
execute if score temp value matches 4 run attribute @s minecraft:generic.movement_speed modifier add 7c183dac-4e05-4f1a-ae04-8ee579aab17f speed_boost 0.8 multiply
execute if score temp value matches 5 run attribute @s minecraft:generic.movement_speed modifier add 7c183dac-4e05-4f1a-ae04-8ee579aab17f speed_boost 1.0 multiply
execute if score temp value matches 6 run attribute @s minecraft:generic.movement_speed modifier add 7c183dac-4e05-4f1a-ae04-8ee579aab17f speed_boost 1.2 multiply
execute if score temp value matches 7 run attribute @s minecraft:generic.movement_speed modifier add 7c183dac-4e05-4f1a-ae04-8ee579aab17f speed_boost 1.4 multiply
execute if score temp value matches 8 run attribute @s minecraft:generic.movement_speed modifier add 7c183dac-4e05-4f1a-ae04-8ee579aab17f speed_boost 1.6 multiply
execute if score temp value matches 9 run attribute @s minecraft:generic.movement_speed modifier add 7c183dac-4e05-4f1a-ae04-8ee579aab17f speed_boost 1.8 multiply
execute if score temp value matches 10 run attribute @s minecraft:generic.movement_speed modifier add 7c183dac-4e05-4f1a-ae04-8ee579aab17f speed_boost 2.0 multiply
execute if score temp value matches 11 run attribute @s minecraft:generic.movement_speed modifier add 7c183dac-4e05-4f1a-ae04-8ee579aab17f speed_boost 2.2 multiply
execute if score temp value matches 12 run attribute @s minecraft:generic.movement_speed modifier add 7c183dac-4e05-4f1a-ae04-8ee579aab17f speed_boost 2.4 multiply
execute if score temp value matches 13 run attribute @s minecraft:generic.movement_speed modifier add 7c183dac-4e05-4f1a-ae04-8ee579aab17f speed_boost 2.6 multiply
execute if score temp value matches 14 run attribute @s minecraft:generic.movement_speed modifier add 7c183dac-4e05-4f1a-ae04-8ee579aab17f speed_boost 2.8 multiply
execute if score temp value matches 15 run attribute @s minecraft:generic.movement_speed modifier add 7c183dac-4e05-4f1a-ae04-8ee579aab17f speed_boost 3.0 multiply
execute if score temp value matches 16 run attribute @s minecraft:generic.movement_speed modifier add 7c183dac-4e05-4f1a-ae04-8ee579aab17f speed_boost 3.2 multiply
execute if score temp value matches 17 run attribute @s minecraft:generic.movement_speed modifier add 7c183dac-4e05-4f1a-ae04-8ee579aab17f speed_boost 3.4 multiply
execute if score temp value matches 18 run attribute @s minecraft:generic.movement_speed modifier add 7c183dac-4e05-4f1a-ae04-8ee579aab17f speed_boost 3.6 multiply
execute if score temp value matches 19 run attribute @s minecraft:generic.movement_speed modifier add 7c183dac-4e05-4f1a-ae04-8ee579aab17f speed_boost 3.8 multiply
execute if score temp value matches 20.. run attribute @s minecraft:generic.movement_speed modifier add 7c183dac-4e05-4f1a-ae04-8ee579aab17f speed_boost 4.0 multiply

#Update the score value
scoreboard players operation @s speed_boost = temp value
