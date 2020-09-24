summon villager ~ ~ ~ {Tags:["new"],VillagerData:{level:99},Invulnerable:1,CustomName:"\"Underworld Dealer\""}
execute as @e[type=villager,tag=new] at @s run function tid:custom_mobs/villager_trades
tag @e[type=villager,tag=new] remove new