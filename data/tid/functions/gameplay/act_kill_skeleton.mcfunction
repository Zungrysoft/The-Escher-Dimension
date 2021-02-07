#Make the check
execute if entity @s[nbt={Inventory:[{Slot:103b, tag:{act_head_kill_skeleton:1b}}]}] if score @s kill_skeleton matches 1.. run function tid:gameplay/effect_grant_head
execute if entity @s[nbt={SelectedItem:{tag:{act_melee_kill_skeleton:1b}}}] if score @s kill_skeleton matches 1.. run function tid:gameplay/effect_grant_melee

execute if entity @s[nbt={Inventory:[{Slot:103b, tag:{act_head_kill_skeleton:1b}}]}] if score @s kill_wither_skel matches 1.. run function tid:gameplay/effect_grant_head
execute if entity @s[nbt={SelectedItem:{tag:{act_melee_kill_skeleton:1b}}}] if score @s kill_wither_skel matches 1.. run function tid:gameplay/effect_grant_melee

#Reset the scores
scoreboard players reset @s kill_skeleton
scoreboard players reset @s kill_wither_skel
