#Swordsman
execute if score @s counter1 matches 0..9 run summon minecraft:piglin ~ ~ ~ {IsImmuneToZombification:1,HandItems:[{id:golden_sword,Count:1}],ArmorItems:[{},{},{id:leather_chestplate,tag:{display:{color:10329495}},Count:1}],HandDropChances:[0F],ArmorDropChances:[0F,0F,0F],Attributes:[{Name:"generic.max_health",Base:16F}],CannotHunt:1,Tags:["keep"]}

#Ranger
execute if score @s counter1 matches 10..19 run summon minecraft:piglin ~ ~ ~ {IsImmuneToZombification:1,HandItems:[{id:crossbow,Count:1}],ArmorItems:[{},{},{id:leather_chestplate,tag:{display:{color:10329495}},Count:1},{id:leather_helmet,tag:{display:{color:10329495}},Count:1}],HandDropChances:[0F],ArmorDropChances:[0F,0F,0F,0F],Attributes:[{Name:"generic.max_health",Base:16F}],CannotHunt:1,Tags:["keep"]}

#Townsfolk
execute if score @s counter1 matches 20..22 run summon minecraft:piglin ~ ~ ~ {IsImmuneToZombification:1,HandItems:[{id:golden_pickaxe,Count:1}],ArmorItems:[{},{},{id:leather,Count:1}],ArmorDropChances:[0F,0F,0.00F],HandDropChances:[0F],CannotHunt:1,Tags:["keep"]}

#Townsfolk Child
execute if score @s counter1 matches 23 run summon minecraft:piglin ~ ~ ~ {IsImmuneToZombification:1,HandItems:[{id:golden_shovel,Count:1}],ArmorItems:[{},{},{id:leather,Count:1}],ArmorDropChances:[0F,0F,0.00F],HandDropChances:[0F],CannotHunt:1,Tags:["keep"],IsBaby:1}

#Tank
execute if score @s counter1 matches 24..25 run summon minecraft:piglin_brute ~ ~ ~ {IsImmuneToZombification:1,HandItems:[{id:golden_axe,Count:1},{id:shield,tag:{BlockEntityTag:{Base:8,Patterns:[{Pattern:tts,Color:12}]}},Count:1}],ArmorItems:[{id:leather_boots,tag:{display:{color:10329495}},Count:1},{id:leather_leggings,tag:{display:{color:10329495}},Count:1},{id:leather_chestplate,tag:{display:{color:10329495}},Count:1},{id:leather_helmet,tag:{display:{color:10329495}},Count:1}],HandDropChances:[0F,0.2F],ArmorDropChances:[0F,0F,0F,0F],CannotHunt:1,Tags:["keep"]}

#Generic Monsters
execute if score @s counter1 matches 26..28 run summon zombie ~ ~ ~ {Tags:["keep"]}
execute if score @s counter1 matches 29 run summon creeper ~ ~ ~ {Tags:["keep"]}
execute if score @s counter1 matches 30 run summon blaze ~ ~ ~ {Tags:["keep"]}
execute if score @s counter1 matches 31 run summon cave_spider ~ ~ ~ {Tags:["keep"]}