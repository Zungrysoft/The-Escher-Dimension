summon minecraft:drowned ~ ~ ~ {CustomName:'[{"text":"Merfolk Guardian"}]',Health:10,HandItems:[{id:wooden_sword,Count:1}],ArmorDropChances:[0.01f,0.01f,0.01f,0.01f],HandDropChances:[0F],Attributes:[{Name:"generic.attack_damage",Base:0f},{Name:"generic.max_health",Base:10F}],PersistenceRequired:1b,Tags:["new"]}
execute as @e[tag=new] run function tid:custom_mobs/equip/armor_chainmail
tag @e[tag=new] remove new
