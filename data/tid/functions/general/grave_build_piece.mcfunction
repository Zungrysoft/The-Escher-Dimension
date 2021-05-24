#Determine which piece we're building
execute if score built value matches 0 run function tid:general/grave_build_bottom
execute if score built value matches 1 run function tid:general/grave_build_top

#Increment
scoreboard players add built value 1
