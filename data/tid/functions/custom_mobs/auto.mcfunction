summon minecraft:zombie ~ ~ ~ {CustomName:'[{"text":"Factory Automaton"}]',Health:12,ArmorItems:[{id:iron_boots,Count:1},{id:iron_leggings,Count:1},{id:iron_chestplate,Count:1},{id:lodestone,Count:1}],ArmorDropChances:[0F,0F,0F,0F],Attributes:[{Name:"generic.max_health",Base:12F}],ActiveEffects: [{ShowParticles:0b,Duration:999999999,Id:14b}],Silent:1b,Tags:["new","auto"],DeathLootTable:"tid:entities/auto"}
execute as @e[tag=new] run function tid:custom_mobs/equip/iron_tool
tag @e[tag=new] remove new
