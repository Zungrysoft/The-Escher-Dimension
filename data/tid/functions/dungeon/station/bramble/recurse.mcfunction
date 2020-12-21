#Prevents branching in this function
scoreboard players operation temp2 value = station_bramble_mode value

#Up
execute if score temp2 value matches 0 positioned ~ ~1 ~ run function tid:dungeon/station/bramble/main
#North
execute if score temp2 value matches 1 positioned ~ ~ ~-1 run function tid:dungeon/station/bramble/main
#East
execute if score temp2 value matches 2 positioned ~1 ~ ~ run function tid:dungeon/station/bramble/main
#South
execute if score temp2 value matches 3 positioned ~ ~ ~1 run function tid:dungeon/station/bramble/main
#West
execute if score temp2 value matches 4 positioned ~-1 ~ ~ run function tid:dungeon/station/bramble/main
#Down
execute if score temp2 value matches 5 positioned ~ ~-1 ~ run function tid:dungeon/station/bramble/main
