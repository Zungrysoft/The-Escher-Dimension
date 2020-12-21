#Add to the number of branches
scoreboard players add station_bramble_branches value 1

#Set the number of of moves on this branch
scoreboard players set calc1 value 2
scoreboard players operation station_bramble_branchmovesleft value /= calc1 value

#Advance the seed
function tid:dungeon/station/bramble/seed_advance

#Decide which direction to branch
execute if score temp value matches 1..5 run scoreboard players set station_bramble_mode value 1
execute if score temp value matches 1..5 positioned ~ ~ ~-1 run function tid:dungeon/station/bramble/main
execute if score temp value matches 6..10 run scoreboard players set station_bramble_mode value 2
execute if score temp value matches 6..10 positioned ~1 ~ ~ run function tid:dungeon/station/bramble/main
execute if score temp value matches 11..15 run scoreboard players set station_bramble_mode value 3
execute if score temp value matches 11..15 positioned ~ ~ ~1 run function tid:dungeon/station/bramble/main
execute if score temp value matches 16..20 run scoreboard players set station_bramble_mode value 4
execute if score temp value matches 16..20 positioned ~-1 ~ ~ run function tid:dungeon/station/bramble/main

#After branching, subtract from the number of branches
scoreboard players remove station_bramble_branches value 1

#Then, figure out the branchmovesleft
#branchmovesleft = movesleft/(branches^2)
scoreboard players operation station_bramble_branchmovesleft value = station_bramble_movesleft value
scoreboard players operation station_bramble_branchmovesleft value /= station_bramble_branches value
scoreboard players operation station_bramble_branchmovesleft value /= station_bramble_branches value
