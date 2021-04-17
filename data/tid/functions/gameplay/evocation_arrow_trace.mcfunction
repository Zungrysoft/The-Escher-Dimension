#Determine if we should continue tracing
scoreboard players set temp value 0
execute if block ~ ~ ~ #tid:raytrace_ignore run scoreboard players set temp value 1

#Continue
execute if score temp value matches 1 positioned ~ ~-0.3 ~ run function tid:gameplay/evocation_arrow_trace
execute if score temp value matches 0 positioned ~ ~-0.3 ~ run function tid:gameplay/evocation_arrow_summon

#Recursion safety
scoreboard players set temp value 2
