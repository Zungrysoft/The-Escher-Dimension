execute as @e[name="station_straggler"] at @s if blocks ~ ~128 ~ ~4 ~136 ~4 33 1 33 all run function tid:dungeon/station_generate_straggler_build
kill @e[name="station_straggler"]