#Reschedule this function in a half second
schedule function tid:half_second 0.5s replace

#Give blindness to players in the deepest areas of The Babirusan Undergrounds
execute as @a[predicate=tid:in_layer_sin] run function tid:update_coords
effect give @a[scores={y=128..138},predicate=tid:in_layer_sin,gamemode=!creative,gamemode=!spectator] blindness 2 0 true
