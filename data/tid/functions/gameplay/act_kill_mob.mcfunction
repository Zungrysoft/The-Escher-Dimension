#Make the check
execute if entity @s[nbt={SelectedItem:{tag:{act_melee_kill_mob:1b}}}] if score @s kill_mob matches 1.. run function tid:gameplay/effect_grant_melee
execute if entity @s[nbt={Inventory:[{Slot:100b, tag:{act_feet_kill_mob:1b}}]}] if score @s kill_mob matches 1.. run function tid:gameplay/effect_grant_feet
execute if entity @s[nbt={Inventory:[{Slot:101b, tag:{act_legs_kill_mob:1b}}]}] if score @s kill_mob matches 1.. run function tid:gameplay/effect_grant_legs
execute if entity @s[nbt={Inventory:[{Slot:102b, tag:{act_chest_kill_mob:1b}}]}] if score @s kill_mob matches 1.. run function tid:gameplay/effect_grant_chest
execute if entity @s[nbt={Inventory:[{Slot:103b, tag:{act_head_kill_mob:1b}}]}] if score @s kill_mob matches 1.. run function tid:gameplay/effect_grant_head
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{act_offhand_kill_mob:1b}}]}] if score @s kill_mob matches 1.. run function tid:gameplay/effect_grant_offhand

#Reset the scores
scoreboard players reset @s kill_mob
