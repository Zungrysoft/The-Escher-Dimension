#Make the check
scoreboard players set has_killed value 0
execute if score @s kill_skeleton matches 1.. run scoreboard players set has_killed value 1
execute if score @s kill_wither_skel matches 1.. run scoreboard players set has_killed value 1

execute if score has_killed value matches 1.. if entity @s[predicate=tid:item/act_mainhand_kill_skeleton] run function tid:gameplay/effect_grant_mainhand
execute if score has_killed value matches 1.. if entity @s[predicate=tid:item/act_head_kill_skeleton] run function tid:gameplay/effect_grant_head
execute if score has_killed value matches 1.. if entity @s[predicate=tid:item/act_offhand_kill_skeleton] run function tid:gameplay/effect_grant_offhand

#Reset the scores
scoreboard players reset @s kill_skeleton
scoreboard players reset @s kill_wither_skel
