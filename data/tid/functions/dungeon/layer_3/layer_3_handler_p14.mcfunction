#Terrain Generation for Moon Zone
say Shaping Lunar Surface...
scoreboard players set temp6 value 0
execute if predicate tid:random_50 run scoreboard players add temp6 value 1
execute if predicate tid:random_50 run scoreboard players add temp6 value 2
execute positioned 100 3 40 run function tid:dungeon/moon/carve

#Brambles in Moon Zone
say Growing Brambles...
execute positioned 120 3 12 run function tid:misc/moon_bramble
execute positioned 85 3 12 run function tid:misc/moon_bramble
execute positioned 85 3 70 run function tid:misc/moon_bramble
execute positioned 120 3 70 run function tid:misc/moon_bramble

#Granite Moss in Moon Zone
execute at @e[type=area_effect_cloud,name="moon_moss_start"] if block ~ ~ ~ end_stone run function tid:misc/moon_moss
kill @e[type=area_effect_cloud,name="moon_moss_start"]

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

#Safeguard spawn nexus against Mutant caves
fill 22 60 -27 -23 54 29 cobblestone replace stone

scoreboard players set layer_3_handler_phase value 20