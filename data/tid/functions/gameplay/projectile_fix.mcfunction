# This dumb hack makes fireballs not jump around

# Set fireball accordingly so it toggles between these two values
execute if score fireball_frame value matches 0 run data modify entity @s Air set value 0s
execute if score fireball_frame value matches 1 run data modify entity @s Air set value 1s
