#Generate the districts and capitols
execute positioned 0 256 0 run function tid:dungeon/sin/scatter_districts
execute at @e[tag=sin_district] positioned ~-9 ~-9 ~-9 run function tid:dungeon/sin/select_capitol
execute as @e[tag=sin_district] at @s run tp @s ~ 200 ~

#Generate the wells that lead down to The Fire Chambers
execute at @e[name="sin_well"] run function tid:dungeon/sin/well_down

say Generating world...

#Done, now move to the next phase
scoreboard players set sin_handler_phase value 20
