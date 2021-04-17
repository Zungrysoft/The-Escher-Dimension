#Reschedule this function in a half second
schedule function tid:tick_half_second 0.5s replace

#Give blindness to players in the deepest areas of The Babirusan Undergrounds
execute as @a[predicate=tid:in_layer_sin] run function tid:update_coords
effect give @a[scores={y=128..137},predicate=tid:in_layer_sin,gamemode=!creative,gamemode=!spectator] blindness 3 0 true
effect clear @a[scores={y=128..137},predicate=tid:in_layer_sin,gamemode=!creative,gamemode=!spectator] night_vision

#Give speed and strength to spiders in infernal
effect give @e[type=minecraft:spider,predicate=tid:in_layer_infernal] minecraft:speed 10 1
effect give @e[type=minecraft:spider,predicate=tid:in_layer_infernal] minecraft:strength 10 1

#Give armor to skeletons in infernal
execute as @e[type=minecraft:skeleton,predicate=tid:in_layer_infernal,tag=!armored] at @s run function tid:custom_mobs/equip/infernal_skeleton
execute as @e[type=minecraft:wither_skeleton,predicate=tid:in_layer_infernal,tag=!armored] at @s run function tid:custom_mobs/equip/infernal_wither_skeleton

#Display the final boss bar
execute if score finale_handler_phase value matches 666 run bossbar set minecraft:boss players @a[predicate=tid:in_layer_finale,advancements={tid:finale/find_boss=true}]

#Esoteric armor bonus
execute as @a at @s run function tid:gameplay/esoteric_armor
