#Make the check
execute if score @s kill_creeper matches 1.. if entity @s[predicate=tid:item/act_mainhand_kill_creeper] run function tid:gameplay/effect_grant_mainhand
execute if score @s kill_creeper matches 1.. if entity @s[predicate=tid:item/act_legs_kill_creeper] run function tid:gameplay/effect_grant_legs
execute if score @s kill_creeper matches 1.. if entity @s[predicate=tid:item/act_offhand_kill_creeper] run function tid:gameplay/effect_grant_offhand

#Reset the scores
scoreboard players reset @s kill_creeper
