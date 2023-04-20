# Check if we should slow the player to counteract the sprinting effects
scoreboard players set should_slow value 0

# Is sprinting (and wearing the item)
execute if score @s sprint matches 1.. if entity @s[predicate=tid:item/no_sprint] run scoreboard players set should_slow value 1
scoreboard players reset @s sprint

# If the player is in the air, just retain whatever attribute they already had
# Since we can't detect whether or not the player is sprinting while in mid-air, we just assume they
# are still doing what they were doing when they became airborne
execute store result score is_on_ground value run data get entity @s OnGround
execute unless score is_on_ground value matches 1.. if entity @s[predicate=tid:item/no_sprint] run scoreboard players set should_slow value 2

# Add or remove the attribute accordingly
execute if score should_slow value matches 0 run attribute @s minecraft:generic.movement_speed modifier remove 08a992aa-5589-4890-b005-ba30059af36b
execute if score should_slow value matches 1 run attribute @s minecraft:generic.movement_speed modifier add 08a992aa-5589-4890-b005-ba30059af36b nosprint -0.23 multiply
