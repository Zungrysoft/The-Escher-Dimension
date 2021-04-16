#Set up a score to track whether a hook was actually found
scoreboard players set temp value 0

#Search for the hook to update our position
tag @s add cur
execute as @e[type=minecraft:fishing_bobber,tag=tracked] at @s if score @s counter1 = @e[type=minecraft:area_effect_cloud,tag=cur,limit=1] counter1 run function tid:gameplay/hook_update
tag @s remove cur

#If the hook was not found, that means it has been reeled in
execute if score temp value matches 0 if score hooked value matches 1 run function tid:gameplay/hook_effect
execute if score temp value matches 0 run kill @s
