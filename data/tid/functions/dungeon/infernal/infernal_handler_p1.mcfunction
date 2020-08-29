#say MASTER PHASE 1
execute as @e[type=area_effect_cloud,name="sewer_section_finished"] at @s run function tid:dungeon/infernal/sewer_generate
execute as @e[type=area_effect_cloud,name="sewer_outflow_north"] at @s run function tid:dungeon/infernal/sewer_outflow_check_north
execute as @e[type=area_effect_cloud,name="sewer_outflow_south"] at @s run function tid:dungeon/infernal/sewer_outflow_check_south
execute as @e[type=area_effect_cloud,name="sewer_outflow_east"] at @s run function tid:dungeon/infernal/sewer_outflow_check_east
execute as @e[type=area_effect_cloud,name="sewer_outflow_west"] at @s run function tid:dungeon/infernal/sewer_outflow_check_west
kill @s