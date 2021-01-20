execute if score @s mine_spawner matches 1.. if entity @s[nbt={SelectedItem:{tag:{healing_pickaxe:1b}}}] run function tid:gameplay/restore_hunger
scoreboard players set @s mine_spawner 0
