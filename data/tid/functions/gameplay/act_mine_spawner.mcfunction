#Make the check
execute if entity @s[predicate=tid:item/act_mainhand_mine_spawner] run function tid:gameplay/effect_grant_mainhand
execute if entity @s[predicate=tid:item/act_feet_mine_spawner] run function tid:gameplay/effect_grant_feet
execute if entity @s[predicate=tid:item/act_legs_mine_spawner] run function tid:gameplay/effect_grant_legs
execute if entity @s[predicate=tid:item/act_chest_mine_spawner] run function tid:gameplay/effect_grant_chest
execute if entity @s[predicate=tid:item/act_head_mine_spawner] run function tid:gameplay/effect_grant_head
execute if entity @s[predicate=tid:item/act_offhand_mine_spawner] run function tid:gameplay/effect_grant_offhand

#Reset the scores
scoreboard players reset @s mine_spawner
