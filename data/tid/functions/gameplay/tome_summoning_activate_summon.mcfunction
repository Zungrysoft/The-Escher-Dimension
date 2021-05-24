#Take the item
execute unless entity @s[gamemode=creative] run clear @s rotten_flesh 10

#Summon the mob
summon minecraft:bee ~ ~ ~ {IsBaby:0,Health:40,CanPickUpLoot:1,PersistenceRequired:1,Attributes:[{Name:"generic.max_health",Base:40F}],HandItems:[{id:golden_sword,Count:1}],HandDropChances:[0F],DeathLootTable:"",Tags:["summon"]}


#summon minecraft:enderman ~ ~ ~ {Health:60,PersistenceRequired:1,Attributes:[{Name:"generic.max_health",Base:60F}],ActiveEffects: [{ShowParticles:0b,Duration:999999999,Id:20b}],DeathLootTable:"",Tags:["summon"]}
