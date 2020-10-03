#Reset all values
scoreboard players set north value 0
scoreboard players set south value 0
scoreboard players set east value 0
scoreboard players set west value 0

#Ensure enough rooms generate at the start
execute if score sand2_rooms value matches 90.. run scoreboard players set north value 1
execute if score sand2_rooms value matches 90.. run scoreboard players set south value 1
execute if score sand2_rooms value matches 90.. run scoreboard players set east value 1
execute if score sand2_rooms value matches 90.. run scoreboard players set west value 1

#Determine which direction the room came from, so the room will definitely open in that direction
#Also there's an extra chance of making the room open in the forward direction to make straight pieces more common
#Coming from north
execute if entity @s[name="sand2_north"] run scoreboard players set south value 1
execute if entity @s[name="sand2_north"] at @s positioned ~-2 ~0 ~-6 run function tid:dungeon/sand2/build_hall_north
execute if entity @s[name="sand2_north"] if predicate tid:random_33 run scoreboard players set north value 1

#Coming from south
execute if entity @s[name="sand2_south"] run scoreboard players set north value 1
execute if entity @s[name="sand2_south"] at @s positioned ~-2 ~0 ~0 run function tid:dungeon/sand2/build_hall_north
execute if entity @s[name="sand2_south"] if predicate tid:random_33 run scoreboard players set south value 1

#Coming from east
execute if entity @s[name="sand2_east"] run scoreboard players set west value 1
execute if entity @s[name="sand2_east"] at @s positioned ~0 ~0 ~-2 run function tid:dungeon/sand2/build_hall_west
execute if entity @s[name="sand2_east"] if predicate tid:random_33 run scoreboard players set east value 1

#Coming from west
execute if entity @s[name="sand2_west"] run scoreboard players set east value 1
execute if entity @s[name="sand2_west"] at @s positioned ~-6 ~0 ~-2 run function tid:dungeon/sand2/build_hall_west
execute if entity @s[name="sand2_west"] if predicate tid:random_33 run scoreboard players set west value 1

#Randomly decide the other directions
execute if predicate tid:random_50 run scoreboard players set north value 1
execute if predicate tid:random_50 run scoreboard players set south value 1
execute if predicate tid:random_50 run scoreboard players set east value 1
execute if predicate tid:random_50 run scoreboard players set west value 1

#Decide a room based on all of this
#Quad
execute if score north value matches 1 if score south value matches 1 if score east value matches 1 if score west value matches 1 positioned ~1 ~1 ~1 run function tid:dungeon/sand2/select_inside_quad

#Tee north
execute if score north value matches 1 if score south value matches 0 if score east value matches 1 if score west value matches 1 positioned ~1 ~1 ~1 run function tid:dungeon/sand2/select_inside_tee_north
#Tee south
execute if score north value matches 0 if score south value matches 1 if score east value matches 1 if score west value matches 1 positioned ~1 ~1 ~1 run function tid:dungeon/sand2/select_inside_tee_south
#Tee east
execute if score north value matches 1 if score south value matches 1 if score east value matches 1 if score west value matches 0 positioned ~1 ~1 ~1 run function tid:dungeon/sand2/select_inside_tee_east
#Tee west
execute if score north value matches 1 if score south value matches 1 if score east value matches 0 if score west value matches 1 positioned ~1 ~1 ~1 run function tid:dungeon/sand2/select_inside_tee_west

#Turn north
execute if score north value matches 1 if score south value matches 0 if score east value matches 1 if score west value matches 0 positioned ~1 ~1 ~1 run function tid:dungeon/sand2/select_inside_turn_north
#Turn south
execute if score north value matches 0 if score south value matches 1 if score east value matches 0 if score west value matches 1 positioned ~1 ~1 ~1 run function tid:dungeon/sand2/select_inside_turn_south
#Turn east
execute if score north value matches 0 if score south value matches 1 if score east value matches 1 if score west value matches 0 positioned ~1 ~1 ~1 run function tid:dungeon/sand2/select_inside_turn_east
#Turn west
execute if score north value matches 1 if score south value matches 0 if score east value matches 0 if score west value matches 1 positioned ~1 ~1 ~1 run function tid:dungeon/sand2/select_inside_turn_west

#Straight north
execute if score north value matches 1 if score south value matches 1 if score east value matches 0 if score west value matches 0 positioned ~1 ~1 ~1 run function tid:dungeon/sand2/select_inside_straight_north
#Straight west
execute if score north value matches 0 if score south value matches 0 if score east value matches 1 if score west value matches 1 positioned ~1 ~1 ~1 run function tid:dungeon/sand2/select_inside_straight_west

#End north
execute if score north value matches 1 if score south value matches 0 if score east value matches 0 if score west value matches 0 positioned ~1 ~1 ~1 run function tid:dungeon/sand2/select_inside_end_north
#End south
execute if score north value matches 0 if score south value matches 1 if score east value matches 0 if score west value matches 0 positioned ~1 ~1 ~1 run function tid:dungeon/sand2/select_inside_end_south
#End east
execute if score north value matches 0 if score south value matches 0 if score east value matches 1 if score west value matches 0 positioned ~1 ~1 ~1 run function tid:dungeon/sand2/select_inside_end_east
#End west
execute if score north value matches 0 if score south value matches 0 if score east value matches 0 if score west value matches 1 positioned ~1 ~1 ~1 run function tid:dungeon/sand2/select_inside_end_west

#Add doorway entities
execute if score north value matches 1 run summon minecraft:area_effect_cloud ~6 ~4 ~ {Duration:99999999,CustomName:"\"sand2_north\""}
execute if score south value matches 1 run summon minecraft:area_effect_cloud ~6 ~4 ~12 {Duration:99999999,CustomName:"\"sand2_south\""}
execute if score east value matches 1 run summon minecraft:area_effect_cloud ~12 ~4 ~6 {Duration:99999999,CustomName:"\"sand2_east\""}
execute if score west value matches 1 run summon minecraft:area_effect_cloud ~ ~4 ~6 {Duration:99999999,CustomName:"\"sand2_west\""}

#Connect up to existing rooms
execute if predicate tid:random_90 if score north value matches 1 if block ~6 ~10 ~-6 chiseled_red_sandstone if block ~6 ~5 ~ cut_red_sandstone positioned ~6 ~4 ~ positioned ~-2 ~0 ~-6 run function tid:dungeon/sand2/build_hall_north
execute if predicate tid:random_90 if score south value matches 1 if block ~6 ~10 ~18 chiseled_red_sandstone if block ~6 ~5 ~12 cut_red_sandstone positioned ~6 ~4 ~12 positioned ~-2 ~0 ~0 run function tid:dungeon/sand2/build_hall_south
execute if predicate tid:random_90 if score east value matches 1 if block ~18 ~10 ~6 chiseled_red_sandstone if block ~12 ~5 ~6 cut_red_sandstone positioned ~12 ~4 ~6 positioned ~0 ~0 ~-2 run function tid:dungeon/sand2/build_hall_east
execute if predicate tid:random_90 if score west value matches 1 if block ~-6 ~10 ~6 chiseled_red_sandstone if block ~ ~5 ~6 cut_red_sandstone positioned ~ ~4 ~6 positioned ~-6 ~0 ~-2 run function tid:dungeon/sand2/build_hall_west

#Mark the doorways so other rooms can connect up to it
execute if score north value matches 1 run setblock ~6 ~10 ~ chiseled_red_sandstone
execute if score south value matches 1 run setblock ~6 ~10 ~12 chiseled_red_sandstone
execute if score east value matches 1 run setblock ~12 ~10 ~6 chiseled_red_sandstone
execute if score west value matches 1 run setblock ~ ~10 ~6 chiseled_red_sandstone




