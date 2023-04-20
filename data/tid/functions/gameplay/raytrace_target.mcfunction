# Raytrace for a neutral mob (such as a Zombie Pigman) to see if it can see its current target
# Returns 0 if it hit nothing
# Returns 1 if it hit a solid block
# Returns 2 if it hit a player

# Result
scoreboard players set raytrace_result value 0

# Recurse
scoreboard players set raytrace_limit value 50

# Find the player we're targeting
execute store result score temp value run data get entity @s AngryAt[0]
execute as @a run function tid:gameplay/raytrace_target_run
