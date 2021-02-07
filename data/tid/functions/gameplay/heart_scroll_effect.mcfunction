#Grant the effect
attribute @s minecraft:generic.max_health modifier remove 7c183d2f-4e05-4f9a-ae04-8ee579aab17f
execute if score temp value matches 1 run attribute @s minecraft:generic.max_health modifier add 7c183d2f-4e05-4f9a-ae04-8ee579aab17f health_boost 2 add
execute if score temp value matches 2 run attribute @s minecraft:generic.max_health modifier add 7c183d2f-4e05-4f9a-ae04-8ee579aab17f health_boost 4 add
execute if score temp value matches 3 run attribute @s minecraft:generic.max_health modifier add 7c183d2f-4e05-4f9a-ae04-8ee579aab17f health_boost 6 add
execute if score temp value matches 4 run attribute @s minecraft:generic.max_health modifier add 7c183d2f-4e05-4f9a-ae04-8ee579aab17f health_boost 8 add
execute if score temp value matches 5 run attribute @s minecraft:generic.max_health modifier add 7c183d2f-4e05-4f9a-ae04-8ee579aab17f health_boost 10 add
execute if score temp value matches 6 run attribute @s minecraft:generic.max_health modifier add 7c183d2f-4e05-4f9a-ae04-8ee579aab17f health_boost 12 add
execute if score temp value matches 7 run attribute @s minecraft:generic.max_health modifier add 7c183d2f-4e05-4f9a-ae04-8ee579aab17f health_boost 14 add
execute if score temp value matches 8 run attribute @s minecraft:generic.max_health modifier add 7c183d2f-4e05-4f9a-ae04-8ee579aab17f health_boost 16 add
execute if score temp value matches 9 run attribute @s minecraft:generic.max_health modifier add 7c183d2f-4e05-4f9a-ae04-8ee579aab17f health_boost 18 add
execute if score temp value matches 10 run attribute @s minecraft:generic.max_health modifier add 7c183d2f-4e05-4f9a-ae04-8ee579aab17f health_boost 20 add
execute if score temp value matches 11 run attribute @s minecraft:generic.max_health modifier add 7c183d2f-4e05-4f9a-ae04-8ee579aab17f health_boost 22 add
execute if score temp value matches 12 run attribute @s minecraft:generic.max_health modifier add 7c183d2f-4e05-4f9a-ae04-8ee579aab17f health_boost 24 add
execute if score temp value matches 13 run attribute @s minecraft:generic.max_health modifier add 7c183d2f-4e05-4f9a-ae04-8ee579aab17f health_boost 26 add
execute if score temp value matches 14 run attribute @s minecraft:generic.max_health modifier add 7c183d2f-4e05-4f9a-ae04-8ee579aab17f health_boost 28 add
execute if score temp value matches 15 run attribute @s minecraft:generic.max_health modifier add 7c183d2f-4e05-4f9a-ae04-8ee579aab17f health_boost 30 add
execute if score temp value matches 16 run attribute @s minecraft:generic.max_health modifier add 7c183d2f-4e05-4f9a-ae04-8ee579aab17f health_boost 32 add
execute if score temp value matches 17 run attribute @s minecraft:generic.max_health modifier add 7c183d2f-4e05-4f9a-ae04-8ee579aab17f health_boost 34 add
execute if score temp value matches 18 run attribute @s minecraft:generic.max_health modifier add 7c183d2f-4e05-4f9a-ae04-8ee579aab17f health_boost 36 add
execute if score temp value matches 19 run attribute @s minecraft:generic.max_health modifier add 7c183d2f-4e05-4f9a-ae04-8ee579aab17f health_boost 38 add
execute if score temp value matches 20.. run attribute @s minecraft:generic.max_health modifier add 7c183d2f-4e05-4f9a-ae04-8ee579aab17f health_boost 40 add

#Update the score value
scoreboard players operation @s health_boost = temp value
