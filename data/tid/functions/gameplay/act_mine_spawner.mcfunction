#Make the check
execute if entity @s[nbt={SelectedItem:{tag:{act_melee_mine_spawner:1b}}}] if score @s mine_spawner matches 1.. run function tid:gameplay/effect_grant_melee
execute if entity @s[nbt={Inventory:[{Slot:103b, tag:{act_head_mine_spawner:1b}}]}] if score @s mine_spawner matches 1.. run function tid:gameplay/effect_grant_head
execute if entity @s[nbt={Inventory:[{Slot:102b, tag:{act_chest_mine_spawner:1b}}]}] if score @s mine_spawner matches 1.. run function tid:gameplay/effect_grant_chest
execute if entity @s[nbt={Inventory:[{Slot:101b, tag:{act_legs_mine_spawner:1b}}]}] if score @s mine_spawner matches 1.. run function tid:gameplay/effect_grant_legs
execute if entity @s[nbt={Inventory:[{Slot:100b, tag:{act_feet_mine_spawner:1b}}]}] if score @s mine_spawner matches 1.. run function tid:gameplay/effect_grant_feet

#Reset the scores
scoreboard players reset @s mine_spawner
