#Reschedule this function in a half second
schedule function tid:tick_half_second 0.5s replace

#Give blindness to players in the deepest areas of The Babirusan Undergrounds
execute as @a[predicate=tid:in_layer_sin] run function tid:update_coords
effect give @a[scores={y=128..138},predicate=tid:in_layer_sin,gamemode=!creative,gamemode=!spectator] blindness 2 0 true
effect clear @a[scores={y=128..138},predicate=tid:in_layer_sin,gamemode=!creative,gamemode=!spectator] night_vision

#Give swiftness to spiders in infernal
effect give @e[type=minecraft:spider,predicate=tid:in_layer_infernal] minecraft:speed 10 1
