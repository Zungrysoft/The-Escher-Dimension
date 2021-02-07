#Schedule another check in 1 second
schedule function tid:gameplay/ai_dealer_all 1s replace

#Run the ai check
execute as @e[type=villager,tag=dealer] at @s run function tid:gameplay/ai_dealer
