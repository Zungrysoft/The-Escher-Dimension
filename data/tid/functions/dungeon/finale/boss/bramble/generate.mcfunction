#Set the block
execute if score temp3 value matches 0 run setblock ~ ~ ~ redstone_block
execute if score temp3 value matches 1 run setblock ~ ~ ~ lapis_block

#Maybe place a core location
execute if predicate tid:random_04 unless entity @e[name="finale_core_location",distance=0..13] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"finale_core_location\""}

#Decide which way to go next
scoreboard players set temp4 value 0
execute if predicate tid:random_50 run scoreboard players set temp4 value 1
execute if predicate tid:random_33 run scoreboard players set temp4 value 2
execute if predicate tid:random_25 run scoreboard players set temp4 value 3
execute if predicate tid:random_20 run scoreboard players set temp4 value 4
execute if predicate tid:random_15 run scoreboard players set temp4 value 5

#Ensure we have enough moves left
scoreboard players remove movesleft value 1
execute unless score movesleft value matches 1.. run scoreboard players set temp4 value 666
execute if block ~ ~-1 ~ bedrock run scoreboard players set temp4 value 666

#Recurse
execute if score temp4 value matches 0 positioned ~1 ~ ~ run function tid:dungeon/finale/boss/bramble/generate
execute if score temp4 value matches 1 positioned ~-1 ~ ~ run function tid:dungeon/finale/boss/bramble/generate
execute if score temp4 value matches 2 positioned ~ ~1 ~ run function tid:dungeon/finale/boss/bramble/generate
execute if score temp4 value matches 3 positioned ~ ~-1 ~ run function tid:dungeon/finale/boss/bramble/generate
execute if score temp4 value matches 4 positioned ~ ~ ~1 run function tid:dungeon/finale/boss/bramble/generate
execute if score temp4 value matches 5 positioned ~ ~ ~-1 run function tid:dungeon/finale/boss/bramble/generate
