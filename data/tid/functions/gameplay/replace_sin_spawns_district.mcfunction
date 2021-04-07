#Figure out what district we're in
function tid:dungeon/sin/get_nearest_district

#Pick a random number between 0 and 8 for choosing which mob to spawn
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2
execute if predicate tid:random_50 run scoreboard players add temp value 4
execute if predicate tid:random_50 run scoreboard players add temp value 8

#Make sure there is at least one captain near each capitol building
#If there is a capitol but no captain nearby, this spawn should probably be a captain
execute if predicate tid:random_50 unless entity @e[type=piglin_brute,tag=captain,distance=0..30] positioned ~ 200 ~ if entity @e[type=area_effect_cloud,tag=sin_district,distance=0..15] run scoreboard players set temp value 15

#Townsfolk
execute if score temp value matches 0..5 run summon minecraft:piglin ~ ~ ~ {IsImmuneToZombification:1,HandItems:[{id:golden_pickaxe,Count:1}],HandDropChances:[0F],CannotHunt:1,Attributes:[{Name:"generic.attack_damage",Base:-3f}],Tags:["villager","new"]}

#Townsfolk Child
execute if score temp value matches 6 run summon minecraft:piglin ~ ~ ~ {IsImmuneToZombification:1,HandItems:[{id:golden_shovel,Count:1}],HandDropChances:[0F],CannotHunt:1,IsBaby:1,Tags:["villager","new"]}

#Swordsman
execute if score temp value matches 7..10 run summon minecraft:piglin ~ ~ ~ {IsImmuneToZombification:1,HandItems:[{id:golden_sword,Count:1}],ArmorItems:[{},{},{id:leather_chestplate,Count:1}],HandDropChances:[0F],ArmorDropChances:[0F,0F,0F],CannotHunt:1,Tags:["villager","new"]}

#Ranger
execute if score temp value matches 11..14 run summon minecraft:piglin ~ ~ ~ {IsImmuneToZombification:1,HandItems:[{id:crossbow,Count:1}],ArmorItems:[{},{},{id:leather_chestplate,Count:1},{}],HandDropChances:[0F],ArmorDropChances:[0F,0F,0F,0F],CannotHunt:1,Tags:["villager","new"]}

#Captain
execute if score temp value matches 15 run summon minecraft:piglin_brute ~ ~ ~ {IsImmuneToZombification:1,HandItems:[{id:golden_axe,Count:1},{id:shield,Count:1}],ArmorItems:[{id:leather_boots,Count:1},{id:leather_leggings,Count:1},{id:leather_chestplate,Count:1},{id:leather_helmet,Count:1}],HandDropChances:[0F,0.2F],ArmorDropChances:[0F,0F,0F,0F],CannotHunt:1,Attributes:[{Name:"generic.attack_damage",Base:-4f}],Tags:["captain","new"]}

#Reclothe this piglin based on their district
execute as @e[tag=new] run function tid:gameplay/replace_sin_spawns_district_color

#If no bookies exist, maybe spawn another one
execute if predicate tid:random_01 unless entity @e[type=piglin,tag=bookmaker] positioned ~ ~ ~0.1 run function tid:custom_mobs/piglin_bookmaker
