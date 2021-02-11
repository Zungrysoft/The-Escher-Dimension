#Make the check
execute if score @s kill_skeleton matches 1.. if entity @s[predicate=tid:item/act_mainhand_kill_skeleton] run function tid:gameplay/effect_grant_mainhand
execute if score @s kill_skeleton matches 1.. if entity @s[predicate=tid:item/act_head_kill_skeleton] run function tid:gameplay/effect_grant_head

execute if score @s kill_wither_skel matches 1.. if entity @s[predicate=tid:item/act_mainhand_kill_skeleton] run function tid:gameplay/effect_grant_mainhand
execute if score @s kill_wither_skel matches 1.. if entity @s[predicate=tid:item/act_head_kill_skeleton] run function tid:gameplay/effect_grant_head

#Reset the scores
scoreboard players reset @s kill_skeleton
scoreboard players reset @s kill_wither_skel
