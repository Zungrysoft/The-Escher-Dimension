#Cracked Polished Blackstone Bricks
function tid:dungeon/sin/chambers/rng/cracked_polished_blackstone_bricks

#Ruins
execute if score y_absolute value matches ..143 if block ~ ~ ~ polished_blackstone_bricks run function tid:dungeon/sin/chambers/rng/broken

#Blackstone
execute if score y_absolute value matches ..158 run function tid:dungeon/sin/chambers/rng/blackstone

#Gilded Blackstone
execute if score y_absolute value matches ..138 if block ~ ~ ~ blackstone run function tid:dungeon/sin/chambers/rng/gilded_blackstone

#Netherrack
execute if predicate tid:random_05 if score y_absolute value matches ..137 if block ~ ~ ~ polished_blackstone_bricks run setblock ~ ~ ~ netherrack

#Recurse
scoreboard players add ycount value 1
scoreboard players add y_absolute value 1
execute unless score ycount value > ymax value positioned ~ ~1 ~ run function tid:dungeon/sin/chambers/rng/rng_y
