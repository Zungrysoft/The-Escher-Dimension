#Pick a random trade
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2
execute if predicate tid:random_50 run scoreboard players add temp value 4
execute if predicate tid:random_50 run scoreboard players add temp value 8

#Add the trade
#Firebird Diamond
execute if score temp value matches 0 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:26},sell:{id:diamond,Count:1,tag:{display:{Name:'[{"text":"Firebird Diamond","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"When held, inflicts levitation","italic":false,"color":"green"}]','[{"text":"on nearby burning creatures.","italic":false,"color":"green"}]']},Enchantments:[{id:fire_aspect,lvl:1}],legendary:1b,fire_diamond:1b}}}

#Blade of Dal-Marceus
execute if score temp value matches 1 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:40},sell:{id:diamond_sword,Count:1,tag:{display:{Name:'[{"text":"Blade of Dal-Marceus","italic":false,"color":"blue","bold":true}]',Lore:['[{"text":"On kill: Sets all nearby monsters on fire and","italic":false,"color":"aqua"}]','[{"text":"  grants speed","italic":false,"color":"aqua"}]','[{"text":"Deals zero damage unless a skeleton is nearby","italic":false,"color":"red"}]']},legendary:1b,skeleton_bane:1b,act_melee_kill_mob:1b,eff_inflict_fire_aoe:1b,eff_grant_speed_strong:1b}}}

#Summoning Staff
execute if score temp value matches 2 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:40},sell:{id:carrot_on_a_stick,Count:1,tag:{display:{Name:'[{"text":"Summoning Staff","italic":false,"color":"yellow","bold":true}]',Lore:['[{"text":"Summons an airborne ally","italic":false,"color":"aqua"}]','[{"text":"Costs 10 rotten flesh per use","italic":false,"color":"red"}]']},Recipes:[],legendary:1b,tome_summoning:1b,Enchantments:[{}]}}}

#Oxidation Staff
execute if score temp value matches 3 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:64},sell:{id:carrot_on_a_stick,Count:1,tag:{display:{Name:'[{"text":"Oxidation Staff","italic":false,"color":"gray","bold":true}]',Lore:['[{"text":"Summons an explosion","italic":false,"color":"aqua"}]','[{"text":"Costs 4 gunpowder per use","italic":false,"color":"red"}]']},Recipes:[],legendary:1b,tome_oxidation:1b,Enchantments:[{}]}}}

#Heart Scroll
execute if score temp value matches 4 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:16},sell:{id:mojang_banner_pattern,Count:1,tag:{display:{Name:'[{"text":"Heart Scroll","italic":false,"color":"dark_red"}]'},legendary:1b,HideFlags:65535,health_scroll:1b}}}

#Speed Scroll
execute if score temp value matches 5 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:16},sell:{id:mojang_banner_pattern,Count:1,tag:{display:{Name:'[{"text":"Speed Scroll","italic":false,"color":"aqua"}]'},legendary:1b,HideFlags:65535,speed_scroll:1b}}}

#Damage Scroll
execute if score temp value matches 6 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:16},sell:{id:mojang_banner_pattern,Count:1,tag:{display:{Name:'[{"text":"Damage Scroll","italic":false,"color":"red"}]'},legendary:1b,HideFlags:65535,damage_scroll:1b}}}

#Armor Scroll
execute if score temp value matches 7 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:16},sell:{id:mojang_banner_pattern,Count:1,tag:{display:{Name:'[{"text":"Armor Scroll","italic":false,"color":"dark_aqua"}]'},legendary:1b,HideFlags:65535,armor_scroll:1b}}}

#Coldsteel Glaive
execute if score temp value matches 8 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:12},sell:{id:iron_sword,Count:1,tag:{display:{Name:'[{"text":"Coldsteel Glaive","italic":false,"bold":true,"color":"gray"}]',Lore:['[{"text":"Inflicts weakness and slowness on","italic":false,"color":"aqua"}]','[{"text":"enemies if hit at max range","italic":false,"color":"aqua"}]']},legendary:1b,tip_sword:1b}}}

#Quartz Staff
execute if score temp value matches 9 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:15},sell:{id:carrot_on_a_stick,Count:1,tag:{display:{Name:'[{"text":"Quartz Staff","italic":false,"color":"white","bold":true}]',Lore:['[{"text":"Aim to place Chiseled Quartz","italic":false,"color":"aqua"}]']},Recipes:[],legendary:1b,tome_block:1b,Enchantments:[{}]}}}

#Jack of Spades
execute if score temp value matches 10 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:20},sell:{id:iron_shovel,Count:1,tag:{display:{Name:'[{"text":"Jack of Spades","italic":false,"bold":true,"color":"yellow"}]'},Enchantments:[{id:knockback,lvl:5}],legendary:1b}}}

#Book of Taliesyn
execute if score temp value matches 11 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:20},sell:{id:book,Count:1,tag:{legendary:1b,display:{Name:'[{"text":"Book of Taliesyn","italic":false,"bold":true,"color":"dark_aqua"}]',Lore:['[{"text":"Destroys arrows shot by","italic":false,"color":"green"}]','[{"text":"monsters when held.","italic":false,"color":"green"}]']},Recipes:[],Enchantments:[{}],tome_barrier:1b}}}

#Superchilled Snowballs
execute if score temp value matches 12 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:10},sell:{id:snowball,Count:3,tag:{bridge_snowball:1b,Enchantments:[{}],display:{Name:'[{"text":"Superchilled Snowball","italic":false,"bold":true,"color":"white"}]',Lore:['[{"text":"Leaves a trail of snow","italic":false,"color":"aqua"}]','[{"text":"behind it when thrown","italic":false,"color":"aqua"}]']}}}}

#Manufacturing Contract: Shredder Arrows
execute if score temp value matches 13 run data modify entity @s Offers.Recipes append value {maxUses:1,specialPrice:0,buy:{id:emerald,Count:32},sell:{id:paper,Count:1,tag:{display:{Name:'[{"text":"Manufacturing Contract","italic":false,"color":"aqua","bold":false}]',Lore:['[{"text":"Buy this item to unlock","italic":false,"color":"gray"}]','[{"text":"the \'Shredder Arrow\' trade.","italic":false,"color":"gray"}]']},shredder_arrow:1}}}

#Manufacturing Contract: Sniper Arrows
execute if score temp value matches 14 run data modify entity @s Offers.Recipes append value {maxUses:1,specialPrice:0,buy:{id:emerald,Count:32},sell:{id:paper,Count:1,tag:{display:{Name:'[{"text":"Manufacturing Contract","italic":false,"color":"aqua","bold":false}]',Lore:['[{"text":"Buy this item to unlock","italic":false,"color":"gray"}]','[{"text":"the \'Sniper Arrow\' trade.","italic":false,"color":"gray"}]']},sniper_arrow:1}}}

#Manufacturing Contract: Zapper Arrows
execute if score temp value matches 15 run data modify entity @s Offers.Recipes append value {maxUses:1,specialPrice:0,buy:{id:emerald,Count:32},sell:{id:paper,Count:1,tag:{display:{Name:'[{"text":"Manufacturing Contract","italic":false,"color":"aqua","bold":false}]',Lore:['[{"text":"Buy this item to unlock","italic":false,"color":"gray"}]','[{"text":"the \'Electric Arrow\' trade.","italic":false,"color":"gray"}]']},zapper_arrow:1}}}
