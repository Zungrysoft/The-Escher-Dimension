#Make the check
execute if entity @s[nbt={Inventory:[{Slot:102b, tag:{act_chest_kill_blaze:1b}}]}] if score @s kill_blaze matches 1.. run function tid:gameplay/effect_grant_chest
execute if entity @s[nbt={SelectedItem:{tag:{act_melee_kill_blaze:1b}}}] if score @s kill_blaze matches 1.. run function tid:gameplay/effect_grant_melee

#Reset the scores
scoreboard players reset @s kill_blaze
