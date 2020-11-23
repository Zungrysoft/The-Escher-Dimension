summon villager ~ ~ ~ {Tags:["new","dealer"],VillagerData:{level:99},Invulnerable:1,CustomName:"\"Underworld Dealer\""}
execute as @e[type=villager,tag=new] at @s run function tid:gameplay/ai_dealer_trades
tag @e[type=villager,tag=new] remove new
