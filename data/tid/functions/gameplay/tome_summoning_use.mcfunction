#Limit the range
scoreboard players set temp value 80

#Run the function
execute rotated as @s anchored eyes positioned ^ ^ ^1 run function tid:gameplay/tome_summoning_recurse
