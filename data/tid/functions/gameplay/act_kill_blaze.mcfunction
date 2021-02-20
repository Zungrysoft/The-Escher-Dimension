#Make the check
execute if score @s kill_blaze matches 1.. if entity @s[predicate=tid:item/act_mainhand_kill_blaze] run function tid:gameplay/effect_grant_mainhand
execute if score @s kill_blaze matches 1.. if entity @s[predicate=tid:item/act_offhand_kill_blaze] run function tid:gameplay/effect_grant_offhand
execute if score @s kill_blaze matches 1.. if entity @s[predicate=tid:item/act_chest_kill_blaze] run function tid:gameplay/effect_grant_chest

#Reset the scores
scoreboard players reset @s kill_blaze
