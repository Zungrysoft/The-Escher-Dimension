#Make sure the player is actually wearing a cyclical item before showing the particle effect
scoreboard players set temp10 value 0
execute if entity @s[predicate=tid:item/act_head_cycle_short] run scoreboard players set temp10 value 1
execute if entity @s[predicate=tid:item/act_chest_cycle_short] run scoreboard players set temp10 value 1
execute if entity @s[predicate=tid:item/act_legs_cycle_short] run scoreboard players set temp10 value 1
execute if entity @s[predicate=tid:item/act_feet_cycle_short] run scoreboard players set temp10 value 1
execute if score temp10 value matches 1 run function tid:gameplay/cycle_refresh_effect
