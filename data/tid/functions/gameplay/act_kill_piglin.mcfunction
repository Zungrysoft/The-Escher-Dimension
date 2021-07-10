#Sum scores together
scoreboard players operation @s kill_piglin += @s kill_zpig
scoreboard players operation @s kill_piglin += @s kill_brute

#Make the check
execute if score @s kill_piglin matches 1.. if entity @s[predicate=tid:item/act_mainhand_kill_piglin] run function tid:gameplay/effect_grant_mainhand
execute if score @s kill_piglin matches 1.. if entity @s[predicate=tid:item/act_feet_kill_piglin] run function tid:gameplay/effect_grant_feet
execute if score @s kill_piglin matches 1.. if entity @s[predicate=tid:item/act_offhand_kill_piglin] run function tid:gameplay/effect_grant_offhand

#Reset the scores
scoreboard players reset @s kill_piglin
scoreboard players reset @s kill_zpig
scoreboard players reset @s kill_brute
