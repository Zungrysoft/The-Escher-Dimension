#Initialize hooks that are not yet tracked
execute as @e[type=minecraft:fishing_bobber,tag=!tracked] at @s run function tid:gameplay/hook_init

#Track hooks positions so we can activate effects
execute as @e[type=minecraft:area_effect_cloud,tag=hook] at @s run function tid:gameplay/hook_track

#Reset the global score for hooking
scoreboard players reset hooked value
