#Particle trail
execute if score temp value matches ..75 run particle minecraft:dust 1 0 0 1

#Distance tracking
scoreboard players remove temp value 1

#Determine what the result of this recurse should be
scoreboard players set temp2 value 0
execute if block ~ ~ ~ #tid:raytrace_ignore run scoreboard players set temp2 value 1
execute if score temp value matches ..0 run scoreboard players set temp2 value 2

#If we have hit a wall, summon the mob
execute if score temp2 value matches 0 positioned ^ ^ ^-1 run function tid:gameplay/summoning_staff_check

#If we have run out of range, play the fail sound
execute if score temp2 value matches 2 at @s run function tid:gameplay/fail_sound

#If the block is transparent, and we haven't run out of range, keep going
execute if score temp2 value matches 1 positioned ^ ^ ^.5 run function tid:gameplay/summoning_staff_recurse
