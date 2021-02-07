#Make the check
execute if entity @s[nbt={Inventory:[{Slot:100b, tag:{act_feet_kill_piglin:1b}}]}] if score @s kill_piglin matches 1.. run function tid:gameplay/effect_grant_feet
execute if entity @s[nbt={SelectedItem:{tag:{act_melee_kill_piglin:1b}}}] if score @s kill_piglin matches 1.. run function tid:gameplay/effect_grant_melee

execute if entity @s[nbt={Inventory:[{Slot:100b, tag:{act_feet_kill_piglin:1b}}]}] if score @s kill_brute matches 1.. run function tid:gameplay/effect_grant_feet
execute if entity @s[nbt={SelectedItem:{tag:{act_melee_kill_piglin:1b}}}] if score @s kill_brute matches 1.. run function tid:gameplay/effect_grant_melee

execute if entity @s[nbt={Inventory:[{Slot:100b, tag:{act_feet_kill_piglin:1b}}]}] if score @s kill_zpig matches 1.. run function tid:gameplay/effect_grant_feet
execute if entity @s[nbt={SelectedItem:{tag:{act_melee_kill_piglin:1b}}}] if score @s kill_zpig matches 1.. run function tid:gameplay/effect_grant_melee

#Reset the scores
scoreboard players reset @s kill_piglin
scoreboard players reset @s kill_brute
scoreboard players reset @s kill_zpig
