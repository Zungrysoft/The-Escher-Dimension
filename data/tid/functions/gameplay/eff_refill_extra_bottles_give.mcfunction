#Count down
scoreboard players remove counter value 1

#Give the bottle
give @s glass_bottle

#Recurse
execute if score counter value matches 1.. run function tid:gameplay/eff_refill_extra_bottles_give
