#Make the check
execute if entity @s[predicate=tid:item/act_offhand_eat_food] run function tid:gameplay/effect_grant_offhand
execute if entity @s[predicate=tid:item/act_chest_eat_food] run function tid:gameplay/effect_grant_chest

#Revoke the advancement
advancement revoke @s only tid:misc/eat_food
