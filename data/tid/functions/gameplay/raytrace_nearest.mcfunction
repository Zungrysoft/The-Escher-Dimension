# Raytrace to see if a mob can see the nearest player
# Returns 0 if it hit nothing
# Returns 1 if it hit a solid block
# Returns 2 if it hit a player

# Result
scoreboard players set raytrace_result value 0

# Recurse
scoreboard players set raytrace_limit value 50
execute anchored eyes facing entity @p eyes run function tid:gameplay/raytrace_loop
