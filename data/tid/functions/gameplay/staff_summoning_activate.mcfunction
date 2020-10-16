#Make sure there is enough space to summon
scoreboard players set temp3 value 0
execute if block ~ ~ ~ #tid:raytrace_ignore if block ~ ~-1 ~ #tid:raytrace_ignore run scoreboard players set temp3 value 2
execute if block ~ ~ ~ #tid:raytrace_ignore if block ~ ~1 ~ #tid:raytrace_ignore run scoreboard players set temp3 value 1

execute if score temp3 value matches 0 run function tid:gameplay/fail_sound
execute if score temp3 value matches 1 run function tid:gameplay/staff_summoning_activate_summon
execute if score temp3 value matches 2 positioned ~ ~-2 ~ run function tid:gameplay/staff_summoning_activate_summon