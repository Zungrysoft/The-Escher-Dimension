#Cracked Polished Blackstone Bricks
function tid:dungeon/sin/rng/cracked_polished_blackstone_bricks

#Ruins
execute if score y_absolute value matches ..143 if block ~ ~ ~ polished_blackstone_bricks run function tid:dungeon/sin/rng/broken

#Blackstone
execute if score y_absolute value matches ..158 run function tid:dungeon/sin/rng/blackstone

#Gilded Blackstone
execute if score y_absolute value matches ..138 if block ~ ~ ~ blackstone run function tid:dungeon/sin/rng/gilded_blackstone

#Netherrack
execute if score y_absolute value matches ..132 if block ~ ~ ~ polished_blackstone_bricks run function tid:dungeon/sin/rng/netherrack

#Recurse
scoreboard players add ycount value 1
scoreboard players add y_absolute value 1
execute unless score ycount value > ymax value positioned ~ ~1 ~ run function tid:dungeon/sin/rng/rng_y
