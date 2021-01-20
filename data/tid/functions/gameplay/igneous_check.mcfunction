scoreboard players set temp value 0
execute as @e[type=#tid:living,distance=..15] run function tid:gameplay/igneous_check_burning
execute if score temp value matches 0 run scoreboard players set cancel value 1
