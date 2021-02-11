#Make the check
execute if score @s kill_mob matches 1.. if entity @s[predicate=tid:item/act_mainhand_kill_mob] run function tid:gameplay/effect_grant_mainhand
execute if score @s kill_mob matches 1.. if entity @s[predicate=tid:item/act_feet_kill_mob] run function tid:gameplay/effect_grant_feet
execute if score @s kill_mob matches 1.. if entity @s[predicate=tid:item/act_legs_kill_mob] run function tid:gameplay/effect_grant_legs
execute if score @s kill_mob matches 1.. if entity @s[predicate=tid:item/act_chest_kill_mob] run function tid:gameplay/effect_grant_chest
execute if score @s kill_mob matches 1.. if entity @s[predicate=tid:item/act_head_kill_mob] run function tid:gameplay/effect_grant_head
execute if score @s kill_mob matches 1.. if entity @s[predicate=tid:item/act_offhand_kill_mob] run function tid:gameplay/effect_grant_offhand

#Reset the scores
scoreboard players reset @s kill_mob
