#Check if the iron block cost has been paid
execute if block ~1 ~6 ~ iron_block if block ~-1 ~6 ~ iron_block if block ~ ~6 ~1 iron_block if block ~ ~6 ~-1 iron_block run function tid:misc/power_drill_activate

#If the Drill has charges left in it, count down to the next dig
execute if score @s tries matches 1.. run scoreboard players remove @s counter1 1
execute if score @s counter1 matches 0 run function tid:misc/power_drill_dig
#execute if score @s counter1 matches 20 run 

#Reset the Drill so it can be activated again if it runs out of power
execute if score @s tries matches 0 if score @s counter1 matches 1.. run function tid:misc/power_drill_reset