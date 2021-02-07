#Make the check
execute if entity @s[nbt={SelectedItem:{tag:{act_melee_deal_damage:1b}}}] if score @s damage_dealt matches 1.. run function tid:gameplay/effect_grant_melee
execute if entity @s[nbt={Inventory:[{Slot:100b, tag:{act_feet_deal_damage:1b}}]}] if score @s damage_dealt matches 1.. run function tid:gameplay/effect_grant_feet
execute if entity @s[nbt={Inventory:[{Slot:101b, tag:{act_legs_deal_damage:1b}}]}] if score @s damage_dealt matches 1.. run function tid:gameplay/effect_grant_legs
execute if entity @s[nbt={Inventory:[{Slot:102b, tag:{act_chest_deal_damage:1b}}]}] if score @s damage_dealt matches 1.. run function tid:gameplay/effect_grant_chest
execute if entity @s[nbt={Inventory:[{Slot:103b, tag:{act_head_deal_damage:1b}}]}] if score @s damage_dealt matches 1.. run function tid:gameplay/effect_grant_head
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{act_offhand_deal_damage:1b}}]}] if score @s damage_dealt matches 1.. run function tid:gameplay/effect_grant_offhand
