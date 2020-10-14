#Prevents branching in this function
scoreboard players operation temp2 value = moon_flower_mode value

#Up
execute if score temp2 value matches 0 positioned ~ ~1 ~ run function tid:dungeon/moon/flower/main
#North
execute if score temp2 value matches 1 positioned ~ ~ ~-1 run function tid:dungeon/moon/flower/main
#East
execute if score temp2 value matches 2 positioned ~1 ~ ~ run function tid:dungeon/moon/flower/main
#South
execute if score temp2 value matches 3 positioned ~ ~ ~1 run function tid:dungeon/moon/flower/main
#West
execute if score temp2 value matches 4 positioned ~-1 ~ ~ run function tid:dungeon/moon/flower/main
#Down
execute if score temp2 value matches 5 positioned ~ ~-1 ~ run function tid:dungeon/moon/flower/main
