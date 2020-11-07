say Generating Dungeons...

#Damnation Station
#Three starts get summoned. One at the entrance, one at the furthest distance from (0,0), and one at a random place
execute positioned 0 55 -39 positioned ~-5 ~-3 ~-19 run function tid:dungeon/station/select_entrance_north
execute positioned 0 55 -39 at @e[type=area_effect_cloud,name="station_straggler_start",sort=furthest,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"station_north\""}
execute at @e[type=area_effect_cloud,name="station_straggler_start",sort=random,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"station_north\""}

#The Moon Zone
execute positioned 22 55 18 positioned ~0 ~-1 ~-8 run function tid:dungeon/moon/select_entrance_east

#Mutant Sludge Pits
execute positioned -22 55 18 positioned ~-16 ~-16 ~-6 run function tid:dungeon/mutant/select_entrance_west

scoreboard players set layer_3_handler_phase value 20