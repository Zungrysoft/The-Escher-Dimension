#Counter tracks the progrss of opening the teleporter
execute unless score @s counter1 matches 100.. if entity @s[tag=!starts_open,tag=!alt] run function tid:general/teleporter_open
execute unless score @s counter1 matches 100.. if entity @s[tag=!starts_open,tag=alt] run function tid:general/teleporter_open_alt

#If fully open, it can teleport players
execute store result score temp value run data get entity @s Color
execute positioned ~1.5 ~-1 ~1.5 as @a[distance=0..3] at @s if block ~ ~-1 ~ sea_lantern run function tid:general/teleporter_teleport

#Title text for opening the portal to layer 1
execute if score @s counter1 matches 67 if data entity @s {Color:14} as @a[distance=0..12] run function tid:intro/portal
