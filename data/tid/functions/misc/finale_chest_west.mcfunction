#Decide which chest to place
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players set temp value 1
execute if predicate tid:random_15 run scoreboard players set temp value 2

#Make sure there is still a block beneath this entity
execute unless block ~ ~-1 ~1 netherite_block run scoreboard players set temp value 666
execute unless block ~ ~-1 ~0 netherite_block run scoreboard players set temp value 666

#Experience
execute if score temp value matches 0 run setblock ~ ~ ~0 chest[facing=west,type=right]{LootTable: "tid:chests/finale_experience"}
execute if score temp value matches 0 run setblock ~ ~ ~1 chest[facing=west,type=left]{LootTable: "tid:chests/finale_experience"}

#Potions
execute if score temp value matches 1 run setblock ~ ~ ~0 chest[facing=west,type=right]{LootTable: "tid:chests/finale_potions"}
execute if score temp value matches 1 run setblock ~ ~ ~1 chest[facing=west,type=left]{LootTable: "tid:chests/finale_potions"}

#Dyes
execute if score temp value matches 2 run setblock ~ ~ ~0 chest[facing=west,type=right]{LootTable: "tid:chests/finale_dyes"}
execute if score temp value matches 2 run setblock ~ ~ ~1 chest[facing=west,type=left]{LootTable: "tid:chests/finale_dyes"}

#Kill the source entity
kill @s
