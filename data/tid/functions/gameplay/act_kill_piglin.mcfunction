#Make the check
execute if score @s kill_piglin matches 1.. if entity @s[predicate=tid:item/act_mainhand_kill_piglin] run function tid:gameplay/effect_grant_mainhand
execute if score @s kill_piglin matches 1.. if entity @s[predicate=tid:item/act_legs_kill_piglin] run function tid:gameplay/effect_grant_legs

execute if score @s kill_zpig matches 1.. if entity @s[predicate=tid:item/act_mainhand_kill_piglin] run function tid:gameplay/effect_grant_mainhand
execute if score @s kill_zpig matches 1.. if entity @s[predicate=tid:item/act_legs_kill_piglin] run function tid:gameplay/effect_grant_legs

execute if score @s kill_brute matches 1.. if entity @s[predicate=tid:item/act_mainhand_kill_piglin] run function tid:gameplay/effect_grant_mainhand
execute if score @s kill_brute matches 1.. if entity @s[predicate=tid:item/act_legs_kill_piglin] run function tid:gameplay/effect_grant_legs

#Reset the scores
scoreboard players reset @s kill_piglin
scoreboard players reset @s kill_zpig
scoreboard players reset @s kill_brute
