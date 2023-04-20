#Store this player's UUID and compare it to the monster's target UUID
#If they match, run the trace
execute store result score temp2 value run data get entity @s UUID[0]
execute if score temp2 value = temp value anchored eyes facing entity @s eyes run function tid:gameplay/raytrace_loop
