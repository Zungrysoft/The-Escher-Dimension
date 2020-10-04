#Reset all values
scoreboard players set north value 0
scoreboard players set south value 0
scoreboard players set east value 0
scoreboard players set west value 0
scoreboard players set event1 value 0

#Ensure enough rooms generate at the start
execute if score sand1_rooms value matches 5.. run scoreboard players set north value 1
execute if score sand1_rooms value matches 5.. run scoreboard players set south value 1
execute if score sand1_rooms value matches 5.. run scoreboard players set east value 1
execute if score sand1_rooms value matches 5.. run scoreboard players set west value 1

#Determine which direction the room came from, so the room will definitely open in that direction
#Also there's an extra chance of making the room open in the forward direction to make straight pieces more common
#Coming from north
execute if entity @s[name="sand1_north"] run scoreboard players set south value 1
execute if entity @s[name="sand1_north"] at @s positioned ~-2 ~-3 ~-6 run function tid:dungeon/sand1/build_hall_north
execute if entity @s[name="sand1_north"] if predicate tid:random_33 run scoreboard players set north value 1

#Coming from south
execute if entity @s[name="sand1_south"] run scoreboard players set north value 1
execute if entity @s[name="sand1_south"] at @s positioned ~-2 ~-3 ~0 run function tid:dungeon/sand1/build_hall_north
execute if entity @s[name="sand1_south"] if predicate tid:random_33 run scoreboard players set south value 1

#Coming from east
execute if entity @s[name="sand1_east"] run scoreboard players set west value 1
execute if entity @s[name="sand1_east"] at @s positioned ~0 ~-3 ~-2 run function tid:dungeon/sand1/build_hall_west
execute if entity @s[name="sand1_east"] if predicate tid:random_33 run scoreboard players set east value 1

#Coming from west
execute if entity @s[name="sand1_west"] run scoreboard players set east value 1
execute if entity @s[name="sand1_west"] at @s positioned ~-6 ~-3 ~-2 run function tid:dungeon/sand1/build_hall_west
execute if entity @s[name="sand1_west"] if predicate tid:random_33 run scoreboard players set west value 1

#Randomly decide the other directions
execute if predicate tid:random_50 run scoreboard players set north value 1
execute if predicate tid:random_50 run scoreboard players set south value 1
execute if predicate tid:random_50 run scoreboard players set east value 1
execute if predicate tid:random_50 run scoreboard players set west value 1

#Event rooms
execute if score sand1_rooms value matches ..5 if score sand1_x_spot_build value matches 0 positioned ~1 ~1 ~1 run function tid:dungeon/sand1/select_inside_event1

#Decide a room based on all of this
#Quad
execute if score north value matches 1 if score south value matches 1 if score east value matches 1 if score west value matches 1 if score event1 value matches 0 positioned ~1 ~1 ~1 run function tid:dungeon/sand1/select_inside_quad_all

#Tee north
execute if score north value matches 1 if score south value matches 0 if score east value matches 1 if score west value matches 1 positioned ~1 ~1 ~1 run function tid:dungeon/sand1/select_inside_tee_north
#Tee south
execute if score north value matches 0 if score south value matches 1 if score east value matches 1 if score west value matches 1 positioned ~1 ~1 ~1 run function tid:dungeon/sand1/select_inside_tee_south
#Tee east
execute if score north value matches 1 if score south value matches 1 if score east value matches 1 if score west value matches 0 positioned ~1 ~1 ~1 run function tid:dungeon/sand1/select_inside_tee_east
#Tee west
execute if score north value matches 1 if score south value matches 1 if score east value matches 0 if score west value matches 1 positioned ~1 ~1 ~1 run function tid:dungeon/sand1/select_inside_tee_west

#Turn north
execute if score north value matches 1 if score south value matches 0 if score east value matches 1 if score west value matches 0 positioned ~1 ~1 ~1 run function tid:dungeon/sand1/select_inside_turn_north
#Turn south
execute if score north value matches 0 if score south value matches 1 if score east value matches 0 if score west value matches 1 positioned ~1 ~1 ~1 run function tid:dungeon/sand1/select_inside_turn_south
#Turn east
execute if score north value matches 0 if score south value matches 1 if score east value matches 1 if score west value matches 0 positioned ~1 ~1 ~1 run function tid:dungeon/sand1/select_inside_turn_east
#Turn west
execute if score north value matches 1 if score south value matches 0 if score east value matches 0 if score west value matches 1 positioned ~1 ~1 ~1 run function tid:dungeon/sand1/select_inside_turn_west

#Straight north
execute if score north value matches 1 if score south value matches 1 if score east value matches 0 if score west value matches 0 positioned ~1 ~1 ~1 run function tid:dungeon/sand1/select_inside_straight_north
#Straight west
execute if score north value matches 0 if score south value matches 0 if score east value matches 1 if score west value matches 1 positioned ~1 ~1 ~1 run function tid:dungeon/sand1/select_inside_straight_west

#End north
execute if score north value matches 1 if score south value matches 0 if score east value matches 0 if score west value matches 0 positioned ~1 ~1 ~1 run function tid:dungeon/sand1/select_inside_end_north
#End south
execute if score north value matches 0 if score south value matches 1 if score east value matches 0 if score west value matches 0 positioned ~1 ~1 ~1 run function tid:dungeon/sand1/select_inside_end_south
#End east
execute if score north value matches 0 if score south value matches 0 if score east value matches 1 if score west value matches 0 positioned ~1 ~1 ~1 run function tid:dungeon/sand1/select_inside_end_east
#End west
execute if score north value matches 0 if score south value matches 0 if score east value matches 0 if score west value matches 1 positioned ~1 ~1 ~1 run function tid:dungeon/sand1/select_inside_end_west

#Add doorway entities
execute if score north value matches 1 run summon minecraft:area_effect_cloud ~6 ~1 ~ {Duration:99999999,CustomName:"\"sand1_north\""}
execute if score south value matches 1 run summon minecraft:area_effect_cloud ~6 ~1 ~12 {Duration:99999999,CustomName:"\"sand1_south\""}
execute if score east value matches 1 run summon minecraft:area_effect_cloud ~12 ~1 ~6 {Duration:99999999,CustomName:"\"sand1_east\""}
execute if score west value matches 1 run summon minecraft:area_effect_cloud ~ ~1 ~6 {Duration:99999999,CustomName:"\"sand1_west\""}

#Connect up to existing rooms
execute if predicate tid:random_90 if score north value matches 1 if block ~6 ~8 ~-6 chiseled_sandstone if block ~6 ~5 ~ cut_sandstone positioned ~6 ~1 ~ positioned ~-2 ~-3 ~-6 run function tid:dungeon/sand1/build_hall_north
execute if predicate tid:random_90 if score south value matches 1 if block ~6 ~8 ~18 chiseled_sandstone if block ~6 ~5 ~12 cut_sandstone positioned ~6 ~1 ~12 positioned ~-2 ~-3 ~0 run function tid:dungeon/sand1/build_hall_south
execute if predicate tid:random_90 if score east value matches 1 if block ~18 ~8 ~6 chiseled_sandstone if block ~12 ~5 ~6 cut_sandstone positioned ~12 ~1 ~6 positioned ~0 ~-3 ~-2 run function tid:dungeon/sand1/build_hall_east
execute if predicate tid:random_90 if score west value matches 1 if block ~-6 ~8 ~6 chiseled_sandstone if block ~ ~5 ~6 cut_sandstone positioned ~ ~1 ~6 positioned ~-6 ~-3 ~-2 run function tid:dungeon/sand1/build_hall_west

#Mark the doorways so other rooms can connect up to it
execute if score north value matches 1 run setblock ~6 ~8 ~ chiseled_sandstone
execute if score south value matches 1 run setblock ~6 ~8 ~12 chiseled_sandstone
execute if score east value matches 1 run setblock ~12 ~8 ~6 chiseled_sandstone
execute if score west value matches 1 run setblock ~ ~8 ~6 chiseled_sandstone




