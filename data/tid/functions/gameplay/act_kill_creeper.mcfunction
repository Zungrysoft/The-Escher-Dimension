#Make the check
execute if entity @s[nbt={Inventory:[{Slot:101b, tag:{act_legs_kill_creeper:1b}}]}] if score @s kill_creeper matches 1.. run function tid:gameplay/effect_grant_legs
execute if entity @s[nbt={SelectedItem:{tag:{act_melee_kill_creeper:1b}}}] if score @s kill_creeper matches 1.. run function tid:gameplay/effect_grant_melee

#Reset the scores
scoreboard players reset @s kill_creeper
