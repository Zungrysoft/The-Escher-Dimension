#Make the check for take_damage
execute if score @s take_damage matches 1.. if entity @s[predicate=tid:item/act_head_take_damage] run function tid:gameplay/effect_grant_head
execute if score @s take_damage matches 1.. if entity @s[predicate=tid:item/act_chest_take_damage] run function tid:gameplay/effect_grant_chest
execute if score @s take_damage matches 1.. if entity @s[predicate=tid:item/act_legs_take_damage] run function tid:gameplay/effect_grant_legs
execute if score @s take_damage matches 1.. if entity @s[predicate=tid:item/act_feet_take_damage] run function tid:gameplay/effect_grant_feet

#Make the check for cycle_short
execute if score @s take_damage matches 1.. if score @s cycle_short matches ..0 if entity @s[predicate=tid:item/act_head_cycle_short] run function tid:gameplay/effect_grant_head
execute if score @s take_damage matches 1.. if score @s cycle_short matches ..0 if entity @s[predicate=tid:item/act_chest_cycle_short] run function tid:gameplay/effect_grant_chest
execute if score @s take_damage matches 1.. if score @s cycle_short matches ..0 if entity @s[predicate=tid:item/act_legs_cycle_short] run function tid:gameplay/effect_grant_legs
execute if score @s take_damage matches 1.. if score @s cycle_short matches ..0 if entity @s[predicate=tid:item/act_feet_cycle_short] run function tid:gameplay/effect_grant_feet

#Handle the cycling
execute if score @s take_damage matches 1.. if score @s cycle_short matches ..0 run scoreboard players set @s cycle_short 900
scoreboard players remove @s cycle_short 1

#Cycling feedback
execute if score @s cycle_short matches 0 run function tid:gameplay/cycle_refresh

#Reset the scores
scoreboard players reset @s take_damage
