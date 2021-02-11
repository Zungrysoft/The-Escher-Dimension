#Make the check
execute if score @s block_damage matches 1.. if entity @s[predicate=tid:item/act_offhand_block_damage] run function tid:gameplay/effect_grant_offhand

#Reset the scores
scoreboard players reset @s block_damage
