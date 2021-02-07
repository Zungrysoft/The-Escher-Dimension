#Pick a random trade
function tid:gameplay/ai_dealer_add_trade
scoreboard players operation selection1 value = temp value
function tid:gameplay/ai_dealer_add_trade
scoreboard players operation selection2 value = temp value
function tid:gameplay/ai_dealer_add_trade
scoreboard players operation selection3 value = temp value

#Ensure no duplicate trades were picked. If so, start over.
scoreboard players set reset value 0
execute if score selection1 value = selection2 value run scoreboard players set reset value 1
execute if score selection1 value = selection3 value run scoreboard players set reset value 1
execute if score selection2 value = selection3 value run scoreboard players set reset value 1
execute if score reset value matches 1 run tag @s remove new
execute if score reset value matches 1 run tp @s ~ -100 ~
execute if score reset value matches 1 run function tid:custom_mobs/dealer

#Add in preset trades
execute if entity @s[predicate=tid:in_layer_3] run data modify entity @s Offers.Recipes[2].buyB set value {id:blaze_powder,Count:3,tag:{display:{Name:'[{"text":"Glowing Powder","italic":false,"color":"gold","bold":false}]'},glow_powder:1b,Enchantments:[{}]}}

#Pick a random type
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2
execute if predicate tid:random_50 run scoreboard players add temp value 4

execute if score temp value matches 0 run data modify entity @s VillagerData.type set value "minecraft:desert"
execute if score temp value matches 1 run data modify entity @s VillagerData.type set value "minecraft:jungle"
execute if score temp value matches 2 run data modify entity @s VillagerData.type set value "minecraft:plains"
execute if score temp value matches 3 run data modify entity @s VillagerData.type set value "minecraft:savanna"
execute if score temp value matches 4 run data modify entity @s VillagerData.type set value "minecraft:snow"
execute if score temp value matches 5 run data modify entity @s VillagerData.type set value "minecraft:swamp"
execute if score temp value matches 6..7 run data modify entity @s VillagerData.type set value "minecraft:taiga"

#Pick a random profession
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2
execute if predicate tid:random_50 run scoreboard players add temp value 4
execute if predicate tid:random_50 run scoreboard players add temp value 8

execute if score temp value matches 0 run data modify entity @s VillagerData.profession set value "minecraft:armorer"
execute if score temp value matches 1 run data modify entity @s VillagerData.profession set value "minecraft:butcher"
execute if score temp value matches 2 run data modify entity @s VillagerData.profession set value "minecraft:cartographer"
execute if score temp value matches 3 run data modify entity @s VillagerData.profession set value "minecraft:cleric"
execute if score temp value matches 4 run data modify entity @s VillagerData.profession set value "minecraft:farmer"
execute if score temp value matches 5 run data modify entity @s VillagerData.profession set value "minecraft:fisherman"
execute if score temp value matches 6 run data modify entity @s VillagerData.profession set value "minecraft:fletcher"
execute if score temp value matches 7 run data modify entity @s VillagerData.profession set value "minecraft:leatherworker"
execute if score temp value matches 8 run data modify entity @s VillagerData.profession set value "minecraft:librarian"
execute if score temp value matches 9 run data modify entity @s VillagerData.profession set value "minecraft:nitwit"
execute if score temp value matches 10 run data modify entity @s VillagerData.profession set value "minecraft:mason"
execute if score temp value matches 11 run data modify entity @s VillagerData.profession set value "minecraft:shepherd"
execute if score temp value matches 12..13 run data modify entity @s VillagerData.profession set value "minecraft:toolsmith"
execute if score temp value matches 14.. run data modify entity @s VillagerData.profession set value "minecraft:weaponsmith"