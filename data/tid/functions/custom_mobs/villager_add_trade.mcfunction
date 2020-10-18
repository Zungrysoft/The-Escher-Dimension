#Pick a random trade
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2
execute if predicate tid:random_50 run scoreboard players add temp value 4
execute if predicate tid:random_50 run scoreboard players add temp value 8
#execute if predicate tid:random_50 run scoreboard players add temp value 16

#Add the trade
#Food
execute if score temp value matches 0 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:1},sell:{id:beef,Count:7}}
execute if score temp value matches 0 run scoreboard players set selection value 0

#Blade of Dal-Marceus
execute if score temp value matches 1 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:40},sell:{id:diamond_sword,Count:1,tag:{display:{Name:'[{"text":"Blade of Dal-Marceus","italic":false,"color":"blue","bold":true}]',Lore:['[{"text":"Only works if a skeleton is nearby","italic":false,"color":"red"}]']},AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:10,Operation:0,UUID:[I;-120713,28944,194251,-57888],Slot:mainhand,Name:"generic.attack_damage"}],skeleton_bane:1b}}}
execute if score temp value matches 1 run scoreboard players set selection value 1

#Summoning Staff
execute if score temp value matches 2 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:40},sell:{id:carrot_on_a_stick,Count:1,tag:{display:{Name:'[{"text":"Summoning Staff","italic":false,"color":"red","bold":true}]',Lore:['[{"text":"Summons an undead ally","italic":false,"color":"aqua"}]','[{"text":"Costs 10 rotten flesh per use","italic":false,"color":"red"}]']},summoning_staff:1b,Enchantments:[{}]}}}
execute if score temp value matches 2 run scoreboard players set selection value 2

#Oxidation Stick
execute if score temp value matches 3 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:64},sell:{id:carrot_on_a_stick,Count:1,tag:{display:{Name:'[{"text":"Oxidation Stick","italic":false,"color":"yellow","bold":true}]',Lore:['[{"text":"Summons an explosion","italic":false,"color":"aqua"}]','[{"text":"Costs 4 gunpowder per use","italic":false,"color":"red"}]']},oxidation_staff:1b,Enchantments:[{}]}}}
execute if score temp value matches 3 run scoreboard players set selection value 3

#Heart Scroll
execute if score temp value matches 4 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:32},sell:{id:mojang_banner_pattern,Count:1,tag:{display:{Name:'[{"text":"Heart Scroll","italic":false,"color":"dark_red"}]'},HideFlags:65535}}}
execute if score temp value matches 4 run scoreboard players set selection value 4

#Rabid Shredder
execute if score temp value matches 5 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:8},sell:{id:crossbow,Count:1,tag:{display:{Name:'[{"text":"Rabid Shredder","italic":false,"bold":true,"color":"dark_red"}]',Lore:['[{"text":"Cannot be repaired","italic":false,"color":"red"}]']},Enchantments:[{id:multishot,lvl:1},{id:quick_charge,lvl:5},{id:piercing,lvl:10}],Damage:286,RepairCost:664}}}
execute if score temp value matches 5 run scoreboard players set selection value 5

#Potion of Rage
execute if score temp value matches 6 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:6},sell:{id:potion,Count:1,tag:{CustomPotionColor:0,display:{Name:'[{"text":"Potion of Rage","italic":false}]'},CustomPotionEffects:[{Id:5,Duration:600,Amplifier:3},{Id:3,Duration:600,Amplifier:3},{Id:7,Duration:0,Amplifier:2}]}}}
execute if score temp value matches 6 run scoreboard players set selection value 6

#Potion of Dexterity
execute if score temp value matches 7 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:6},sell:{id:potion,Count:1,tag:{CustomPotionEffects:[{Id:8,Amplifier:4,Duration:600},{Id:1,Amplifier:2,Duration:600},{Id:3,Amplifier:2,Duration:600}],CustomPotionColor:16777215,display:{Name:'[{"text":"Potion of Dexterity","italic":false}]'}}}}
execute if score temp value matches 7 run scoreboard players set selection value 7

#Wizard Shell
execute if score temp value matches 8 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:16},sell:{id:nautilus_shell,Count:1,tag:{display:{Name:'[{"text":"Wizard Shell","italic":false,"color":"light_purple"}]',Lore:['[{"text":"+20% Speed when held","italic":false,"color":"white"}]']},Enchantments:[{}],HideFlags:2,AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.2,Operation:1,UUID:[I;-120823,18605,202753,-37210],Slot:mainhand,Name:"generic.movement_speed"},{AttributeName:"generic.movement_speed",Amount:0.2,Operation:1,UUID:[I;-120823,18605,202753,-37211],Slot:offhand,Name:"generic.movement_speed"}]}}}
execute if score temp value matches 8 run scoreboard players set selection value 8

#Heavyweight
execute if score temp value matches 9 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:32},sell:{id:nether_brick,Count:1,tag:{display:{Name:'[{"text":"Heavyweight","italic":false,"color":"light_purple"}]',Lore:['[{"text":"+100% Knockback Resistance when held","italic":false,"color":"white"}]']},Enchantments:[{}],HideFlags:2,AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Amount:1,Operation:0,UUID:[I;-120823,18605,202753,-37610],Slot:mainhand,Name:"generic.knockback_resistance"},{AttributeName:"generic.knockback_resistance",Amount:1,Operation:0,UUID:[I;-120823,18605,202753,-37711],Slot:offhand,Name:"generic.knockback_resistance"}]}}}
execute if score temp value matches 9 run scoreboard players set selection value 9

#Potion of Grace
execute if score temp value matches 10 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:10},sell:{id:potion,Count:1,tag:{CustomPotionColor:7368959,display:{Name:'[{"text":"Potion of Grace","italic":false}]'},CustomPotionEffects:[{Id:30,Duration:7200,Amplifier:0}]}}}
execute if score temp value matches 10 run scoreboard players set selection value 10

#Mystery Potion
execute if score temp value matches 11 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:4},sell:{id:potion,Count:1,tag:{CustomPotionColor:11382189,display:{Name:'[{"text":"Mystery Potion","italic":false}]',Lore:['[{"text":"Grants a random positive","italic":false,"color":"blue"}]','[{"text":"potion effect","italic":false,"color":"blue"}]']},CustomPotionEffects:[{Id:27,Duration:20,Amplifier:0}],HideFlags:65535}}}
execute if score temp value matches 11 run scoreboard players set selection value 11

#Sharpening Stone
execute if score temp value matches 12 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:32},sell:{id:iron_ingot,Count:1,tag:{display:{Name:'[{"text":"Sharpening Stone","italic":false,"color":"light_purple"}]',Lore:['[{"text":"+2 Attack Damage when held","italic":false,"color":"white"}]']},Enchantments:[{}],HideFlags:2,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;-120825,18605,202753,-37210],Slot:mainhand,Name:"generic.attack_damage"},{AttributeName:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;-120826,18605,202753,-37211],Slot:offhand,Name:"generic.attack_damage"}]}}}
execute if score temp value matches 12 run scoreboard players set selection value 12

#Quartz Staff
execute if score temp value matches 13 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:20},sell:{id:carrot_on_a_stick,Count:1,tag:{display:{Name:'[{"text":"Quartz Staff","italic":false,"color":"white","bold":true}]',Lore:['[{"text":"Aim to place Chiseled Quartz","italic":false,"color":"aqua"}]']},block_staff:1b,Enchantments:[{}]}}}
execute if score temp value matches 13 run scoreboard players set selection value 13

#Jack of Spades
execute if score temp value matches 14 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:24},sell:{id:iron_shovel,Count:1,tag:{display:{Name:'[{"text":"Jack of Spades","italic":false,"bold":true,"color":"yellow"}]'},Enchantments:[{id:knockback,lvl:5}]}}}
execute if score temp value matches 14 run scoreboard players set selection value 14

#Superchilled Snowballs
execute if score temp value matches 15.. run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:30},sell:{id:snowball,Count:3,tag:{bridge_snowball:1b,Enchantments:[{}],display:{Name:'[{"text":"Superchilled Snowball","italic":false,"bold":true,"color":"white"}]',Lore:['[{"text":"Leaves a trail of snow","italic":false,"color":"aqua"}]','[{"text":"behind it when thrown","italic":false,"color":"aqua"}]']}}}}
execute if score temp value matches 15.. run scoreboard players set selection value 15

#Item Name
#execute if score temp value matches 666 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:32},sell:{id:stone,Count:1,tag:{}}}
#execute if score temp value matches 666 run scoreboard players set selection value 666

#Item Name
#execute if score temp value matches 666 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:32},sell:{id:stone,Count:1,tag:{}}}
#execute if score temp value matches 666 run scoreboard players set selection value 666

#Item Name
#execute if score temp value matches 666 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:32},sell:{id:stone,Count:1,tag:{}}}
#execute if score temp value matches 666 run scoreboard players set selection value 666

#Item Name
#execute if score temp value matches 666 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:32},sell:{id:stone,Count:1,tag:{}}}
#execute if score temp value matches 666 run scoreboard players set selection value 666

#Item Name
#execute if score temp value matches 666 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:32},sell:{id:stone,Count:1,tag:{}}}
#execute if score temp value matches 666 run scoreboard players set selection value 666

#Item Name
#execute if score temp value matches 666 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:32},sell:{id:stone,Count:1,tag:{}}}
#execute if score temp value matches 666 run scoreboard players set selection value 666

#Item Name
#execute if score temp value matches 666 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:32},sell:{id:stone,Count:1,tag:{}}}
#execute if score temp value matches 666 run scoreboard players set selection value 666

#Item Name
#execute if score temp value matches 666 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:32},sell:{id:stone,Count:1,tag:{}}}
#execute if score temp value matches 666 run scoreboard players set selection value 666

#Item Name
#execute if score temp value matches 666 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:32},sell:{id:stone,Count:1,tag:{}}}
#execute if score temp value matches 666 run scoreboard players set selection value 666

#Item Name
#execute if score temp value matches 666 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:32},sell:{id:stone,Count:1,tag:{}}}
#execute if score temp value matches 666 run scoreboard players set selection value 666

#Item Name
#execute if score temp value matches 666 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:32},sell:{id:stone,Count:1,tag:{}}}
#execute if score temp value matches 666 run scoreboard players set selection value 666

#Item Name
#execute if score temp value matches 666 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:32},sell:{id:stone,Count:1,tag:{}}}
#execute if score temp value matches 666 run scoreboard players set selection value 666




