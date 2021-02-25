execute if entity @s[tag=starts_open,tag=!open] run tag @s add open

execute if entity @s[tag=!open] if data entity @s {Color:0} run function tid:general/teleporter_inactive_hellion
execute if entity @s[tag=!open] if data entity @s {Color:2} run function tid:general/teleporter_inactive_layer_3
execute if entity @s[tag=!open] if data entity @s {Color:4} run function tid:general/teleporter_inactive_infernal
execute if entity @s[tag=!open] if data entity @s {Color:6} run function tid:general/teleporter_inactive_jungle
execute if entity @s[tag=!open] if data entity @s {Color:8} run function tid:general/teleporter_inactive_sin
execute if entity @s[tag=!open] if data entity @s {Color:10} run function tid:general/teleporter_inactive_layer_2

execute if entity @s[tag=open] run fill ~ ~-2 ~ ~3 ~-2 ~3 sea_lantern replace air
execute if entity @s[tag=open] run function tid:general/teleporter_active
execute if entity @s[tag=!built] run function tid:general/teleporter_build
