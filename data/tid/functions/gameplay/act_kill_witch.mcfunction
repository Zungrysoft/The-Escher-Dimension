#Make the check
execute if score @s kill_witch matches 1.. if entity @s[predicate=tid:item/act_head_kill_witch] run function tid:gameplay/effect_grant_head

#Reset the scores
scoreboard players reset @s kill_witch
