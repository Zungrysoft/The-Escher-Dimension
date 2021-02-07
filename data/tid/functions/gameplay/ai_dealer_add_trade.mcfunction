#Pick a random trade
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2
execute if predicate tid:random_50 run scoreboard players add temp value 4
execute if predicate tid:random_50 run scoreboard players add temp value 8

#Add the trade
#Firebird Diamond
execute if score temp value matches 0 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:26},sell:{id:diamond,Count:1,tag:{display:{Name:'[{"text":"Firebird Diamond","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"When held, inflicts levitation","italic":false,"color":"green"}]','[{"text":"on nearby burning creatures.","italic":false,"color":"green"}]']},Enchantments:[{id:fire_aspect,lvl:1}],Unbreakable:1,fire_diamond:1b}}}

#Blade of Dal-Marceus
execute if score temp value matches 1 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:40},sell:{id:diamond_sword,Count:1,tag:{display:{Name:'[{"text":"Blade of Dal-Marceus","italic":false,"color":"blue","bold":true}]',Lore:['[{"text":"Only works if a skeleton is nearby","italic":false,"color":"red"}]']},AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:10,Operation:0,UUID:[I;-120713,28944,194251,-57888],Slot:mainhand,Name:"generic.attack_damage"}],Unbreakable:1,skeleton_bane:1b}}}

#Summoning Staff
execute if score temp value matches 2 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:40},sell:{id:carrot_on_a_stick,Count:1,tag:{display:{Name:'[{"text":"Summoning Staff","italic":false,"color":"red","bold":true}]',Lore:['[{"text":"Summons an undead ally","italic":false,"color":"aqua"}]','[{"text":"Costs 10 rotten flesh per use","italic":false,"color":"red"}]']},Unbreakable:1,summoning_staff:1b,Enchantments:[{}]}}}

#Oxidation Stick
execute if score temp value matches 3 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:64},sell:{id:carrot_on_a_stick,Count:1,tag:{display:{Name:'[{"text":"Oxidation Stick","italic":false,"color":"yellow","bold":true}]',Lore:['[{"text":"Summons an explosion","italic":false,"color":"aqua"}]','[{"text":"Costs 4 gunpowder per use","italic":false,"color":"red"}]']},Unbreakable:1,oxidation_staff:1b,Enchantments:[{}]}}}

#Heart Scroll
execute if score temp value matches 4 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:16},sell:{id:mojang_banner_pattern,Count:1,tag:{display:{Name:'[{"text":"Heart Scroll","italic":false,"color":"dark_red"}]'},Unbreakable:1,HideFlags:65535,health_scroll:1b}}}

#Speed Scroll
execute if score temp value matches 5 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:16},sell:{id:mojang_banner_pattern,Count:1,tag:{display:{Name:'[{"text":"Speed Scroll","italic":false,"color":"aqua"}]'},Unbreakable:1,HideFlags:65535,speed_scroll:1b}}}

#Damage Scroll
execute if score temp value matches 6 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:16},sell:{id:mojang_banner_pattern,Count:1,tag:{display:{Name:'[{"text":"Damage Scroll","italic":false,"color":"red"}]'},Unbreakable:1,HideFlags:65535,damage_scroll:1b}}}

#Armor Scroll
execute if score temp value matches 7 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:16},sell:{id:mojang_banner_pattern,Count:1,tag:{display:{Name:'[{"text":"Armor Scroll","italic":false,"color":"dark_aqua"}]'},Unbreakable:1,HideFlags:65535,armor_scroll:1b}}}

#Sharpening Stone
execute if score temp value matches 8 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:32},sell:{id:iron_ingot,Count:1,tag:{display:{Name:'[{"text":"Sharpening Stone","italic":false,"color":"light_purple"}]',Lore:['[{"text":"+2 Attack Damage when held","italic":false,"color":"white"}]']},Enchantments:[{}],HideFlags:2,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;-120825,18605,202753,-37210],Slot:mainhand,Name:"generic.attack_damage"},{AttributeName:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;-120826,18605,202753,-37211],Slot:offhand,Name:"generic.attack_damage"}]}}}

#Quartz Staff
execute if score temp value matches 9 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:15},sell:{id:carrot_on_a_stick,Count:1,tag:{display:{Name:'[{"text":"Quartz Staff","italic":false,"color":"white","bold":true}]',Lore:['[{"text":"Aim to place Chiseled Quartz","italic":false,"color":"aqua"}]']},Unbreakable:1,block_staff:1b,Enchantments:[{}]}}}

#Jack of Spades
execute if score temp value matches 10 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:20},sell:{id:iron_shovel,Count:1,tag:{display:{Name:'[{"text":"Jack of Spades","italic":false,"bold":true,"color":"yellow"}]'},Enchantments:[{id:knockback,lvl:5}],Unbreakable:1}}}

#Jack of Spades
execute if score temp value matches 11 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:20},sell:{id:iron_shovel,Count:1,tag:{display:{Name:'[{"text":"Azriel\'s Timepiece","italic":false,"bold":true,"color":"dark_purple"}]',Lore:['[{"text":"Inflicts slowness on nearby","italic":false,"color":"green"}]','[{"text":"monsters when held","italic":false,"color":"green"}]']},Enchantments:[{}],Unbreakable:1,slow_clock:1b}}}

#Superchilled Snowballs
execute if score temp value matches 12 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:10},sell:{id:snowball,Count:3,tag:{bridge_snowball:1b,Enchantments:[{}],display:{Name:'[{"text":"Superchilled Snowball","italic":false,"bold":true,"color":"white"}]',Lore:['[{"text":"Leaves a trail of snow","italic":false,"color":"aqua"}]','[{"text":"behind it when thrown","italic":false,"color":"aqua"}]']}}}}

#Manufacturing Contract: Shredder Arrows
execute if score temp value matches 13 run data modify entity @s Offers.Recipes append value {maxUses:1,specialPrice:0,buy:{id:emerald,Count:32},sell:{id:paper,Count:1,tag:{display:{Name:'[{"text":"Manufacturing Contract","italic":false,"color":"aqua","bold":false}]',Lore:['[{"text":"Buy this item to unlock","italic":false,"color":"gray"}]','[{"text":"the \'Shredder Arrow\' trade.","italic":false,"color":"gray"}]']},shredder_arrow:1}}}

#Manufacturing Contract: Sniper Arrows
execute if score temp value matches 14 run data modify entity @s Offers.Recipes append value {maxUses:1,specialPrice:0,buy:{id:emerald,Count:32},sell:{id:paper,Count:1,tag:{display:{Name:'[{"text":"Manufacturing Contract","italic":false,"color":"aqua","bold":false}]',Lore:['[{"text":"Buy this item to unlock","italic":false,"color":"gray"}]','[{"text":"the \'Sniper Arrow\' trade.","italic":false,"color":"gray"}]']},sniper_arrow:1}}}

#Manufacturing Contract: Zapper Arrows
execute if score temp value matches 15 run data modify entity @s Offers.Recipes append value {maxUses:1,specialPrice:0,buy:{id:emerald,Count:32},sell:{id:paper,Count:1,tag:{display:{Name:'[{"text":"Manufacturing Contract","italic":false,"color":"aqua","bold":false}]',Lore:['[{"text":"Buy this item to unlock","italic":false,"color":"gray"}]','[{"text":"the \'Electric Arrow\' trade.","italic":false,"color":"gray"}]']},zapper_arrow:1}}}
