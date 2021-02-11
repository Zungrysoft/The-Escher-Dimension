#Make the check
execute if entity @s[predicate=tid:item/act_mainhand_deal_damage] run function tid:gameplay/effect_grant_mainhand
execute if entity @s[predicate=tid:item/act_feet_deal_damage] run function tid:gameplay/effect_grant_feet
execute if entity @s[predicate=tid:item/act_legs_deal_damage] run function tid:gameplay/effect_grant_legs
execute if entity @s[predicate=tid:item/act_chest_deal_damage] run function tid:gameplay/effect_grant_chest
execute if entity @s[predicate=tid:item/act_head_deal_damage] run function tid:gameplay/effect_grant_head
execute if entity @s[predicate=tid:item/act_offhand_deal_damage] run function tid:gameplay/effect_grant_offhand
