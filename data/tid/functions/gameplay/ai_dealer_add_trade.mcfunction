#Pick a random trade
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2
execute if predicate tid:random_50 run scoreboard players add temp value 4
execute if predicate tid:random_50 run scoreboard players add temp value 8

#Add the trade
#Firebird Diamond
execute if score temp value matches 0 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:36},sell:{id:diamond,Count:1,tag:{display:{Name:'[{"text":"Firebird Diamond","italic":false,"bold":true,"color":"aqua"}]',Lore:['[{"text":"When held, inflicts levitation","italic":false,"color":"green"}]','[{"text":"on nearby burning creatures.","italic":false,"color":"green"}]']},Enchantments:[{id:fire_aspect,lvl:1}],legendary:1b,fire_diamond:1b}}}

#Blade of Dal-Marceus
execute if score temp value matches 1 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:40},sell:{id:iron_sword,Count:1,tag:{display:{Name:'[{"text":"Blade of Dal-Marceus","italic":false,"color":"blue","bold":true}]',Lore:['[{"text":"On kill: Sets all nearby monsters on fire,","italic":false,"color":"aqua"}]','[{"text":"slows them, and grants speed","italic":false,"color":"aqua"}]','[{"text":"Deals zero damage unless a skeleton is nearby","italic":false,"color":"red"}]']},legendary:1b,skeleton_bane:1b,act_mainhand_kill_mob:1b,eff_inflict_fire_aoe:1b,eff_inflict_slowness_aoe:1b,eff_grant_speed_strong:1b}}}

#Summoning Staff
execute if score temp value matches 2 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:40},sell:{id:carrot_on_a_stick,Count:1,tag:{display:{Name:'[{"text":"Summoning Staff","italic":false,"color":"yellow","bold":true}]',Lore:['[{"text":"Summons an airborne ally","italic":false,"color":"aqua"}]','[{"text":"Costs 10 rotten flesh per use","italic":false,"color":"red"}]']},Recipes:[],legendary:1b,tome_summoning:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],HideFlags:1}}}

#Oxidation Staff
execute if score temp value matches 3 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:64},sell:{id:carrot_on_a_stick,Count:1,tag:{display:{Name:'[{"text":"Oxidation Staff","italic":false,"color":"gray","bold":true}]',Lore:['[{"text":"Summons an explosion","italic":false,"color":"aqua"}]','[{"text":"Costs 4 gunpowder per use","italic":false,"color":"red"}]']},Recipes:[],legendary:1b,tome_oxidation:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],HideFlags:1}}}

#Heart Scroll
execute if score temp value matches 4 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:20},sell:{id:mojang_banner_pattern,Count:1,tag:{display:{Name:'[{"text":"Heart Scroll","italic":false,"color":"dark_red"}]'},legendary:1b,HideFlags:65535,health_scroll:1b}}}

#Speed Scroll
execute if score temp value matches 5 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:20},sell:{id:mojang_banner_pattern,Count:1,tag:{display:{Name:'[{"text":"Speed Scroll","italic":false,"color":"aqua"}]'},legendary:1b,HideFlags:65535,speed_scroll:1b}}}

#Damage Scroll
execute if score temp value matches 6 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:20},sell:{id:mojang_banner_pattern,Count:1,tag:{display:{Name:'[{"text":"Damage Scroll","italic":false,"color":"red"}]'},legendary:1b,HideFlags:65535,damage_scroll:1b}}}

#Wizard's Handaxe
execute if score temp value matches 7 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:25},sell:{id:iron_axe,Count:1,tag:{display:{Name:'[{"text":"The Wizard\'s Handaxe","italic":false,"bold":true,"color":"dark_purple"}]',Lore:['[{"text":"Summons biting fangs around","italic":false,"color":"aqua"}]','[{"text":"you on kill","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},legendary:1b,act_mainhand_kill_mob:1b,eff_evoker:1b}}}

#Coldsteel Glaive
execute if score temp value matches 8 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:35},sell:{id:iron_sword,Count:1,tag:{display:{Name:'[{"text":"Coldsteel Glaive","italic":false,"bold":true,"color":"gray"}]',Lore:['[{"text":"+5 damage on monsters","italic":false,"color":"aqua"}]','[{"text":"if hit at max range","italic":false,"color":"aqua"}]']},legendary:1b,tip_sword:1b}}}

#Azriel's Timepiece
execute if score temp value matches 9 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:46},sell:{id:clock,Count:1,tag:{display:{Name:'[{"text":"Azriel\'s Timepiece","italic":false,"bold":true,"color":"dark_purple"}]',Lore:['[{"text":"Inflicts slowness on nearby","italic":false,"color":"green"}]','[{"text":"monsters when held","italic":false,"color":"green"}]']},legendary:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],HideFlags:1,slow_clock:1b}}}

#Wormhole Staff
execute if score temp value matches 10 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:30},sell:{id:carrot_on_a_stick,Count:1,tag:{display:{Name:'[{"text":"Wormhole Staff","italic":false,"color":"dark_aqua","bold":true}]',Lore:['[{"text":"Teleports all monsters within 10","italic":false,"color":"aqua"}]','[{"text":"  blocks to chosen location","italic":false,"color":"aqua"}]','[{"text":"Costs 3 fire charges per use","italic":false,"color":"red"}]']},Recipes:[],legendary:1b,tome_wormhole:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],HideFlags:1}}}

#Book of Taliesyn
execute if score temp value matches 11 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:22},sell:{id:book,Count:1,tag:{legendary:1b,display:{Name:'[{"text":"Book of Taliesyn","italic":false,"bold":true,"color":"dark_aqua"}]',Lore:['[{"text":"Destroys arrows shot by","italic":false,"color":"green"}]','[{"text":"monsters when held.","italic":false,"color":"green"}]']},Recipes:[],Enchantments:[{id:"minecraft:unbreaking",lvl:1}],HideFlags:1,book_barrier:1b}}}

#Earthquake Hook
execute if score temp value matches 12 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:28},sell:{id:fishing_rod,Count:1,tag:{display:{Name:'[{"text":"Earthquake Hook","italic":false,"bold":true,"color":"dark_aqua"}]',Lore:['[{"text":"Effect: Deals 9 damage to all","italic":false,"color":"aqua"}]','[{"text":"nearby monsters and launches","italic":false,"color":"aqua"}]','[{"text":"them into the air.","italic":false,"color":"aqua"}]']},Enchantments:[{id:unbreaking,lvl:3}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:8,Operation:0,UUID:[I;-121316,30606,618,-61212],Slot:mainhand,Name:"generic.attack_damage"},{AttributeName:"generic.attack_speed",Amount:-3,Operation:0,UUID:[I;-121316,30706,618,-61412],Slot:mainhand,Name:"generic.attack_speed"}],hook_type:1,legendary:1b}}}

#Manufacturing Contract: Shredder Arrows/Sniper Arrows
scoreboard players set temp8 value 0
execute if predicate tid:random_50 run scoreboard players set temp8 value 1
execute if score temp value matches 13 if score temp8 value matches 0 run data modify entity @s Offers.Recipes append value {maxUses:1,specialPrice:0,buy:{id:emerald,Count:32},sell:{id:paper,Count:1,tag:{display:{Name:'[{"text":"Manufacturing Contract","italic":false,"color":"aqua","bold":false}]',Lore:['[{"text":"Buy this item to unlock","italic":false,"color":"gray"}]','[{"text":"the \'Shredder Arrow\' trade.","italic":false,"color":"gray"}]']},shredder_arrow:1}}}
execute if score temp value matches 13 if score temp8 value matches 1 run data modify entity @s Offers.Recipes append value {maxUses:1,specialPrice:0,buy:{id:emerald,Count:32},sell:{id:paper,Count:1,tag:{display:{Name:'[{"text":"Manufacturing Contract","italic":false,"color":"aqua","bold":false}]',Lore:['[{"text":"Buy this item to unlock","italic":false,"color":"gray"}]','[{"text":"the \'Sniper Arrow\' trade.","italic":false,"color":"gray"}]']},sniper_arrow:1}}}

#Manufacturing Contract: Zapper Arrows
execute if score temp value matches 14 run data modify entity @s Offers.Recipes append value {maxUses:1,specialPrice:0,buy:{id:emerald,Count:32},sell:{id:paper,Count:1,tag:{display:{Name:'[{"text":"Manufacturing Contract","italic":false,"color":"aqua","bold":false}]',Lore:['[{"text":"Buy this item to unlock","italic":false,"color":"gray"}]','[{"text":"the \'Electric Arrow\' trade.","italic":false,"color":"gray"}]']},zapper_arrow:1}}}

#Hilt Missile
execute if score temp value matches 15 run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,buy:{id:emerald,Count:40},sell:{id:iron_axe,Count:1,tag:{display:{Name:'[{"text":"Hilt Missile","italic":false,"bold":true,"color":"dark_aqua"}]',Lore:['[{"text":"Put a crossbow in Slot 2 of","italic":false,"color":"aqua"}]','[{"text":"your inventory. On kill, that","italic":false,"color":"aqua"}]','[{"text":"crossbow will be reloaded with","italic":false,"color":"aqua"}]','[{"text":"fireworks from your inventory.","italic":false,"color":"aqua"}]']},act_mainhand_kill_mob:1b,eff_fireworks_reload:1b}}}
