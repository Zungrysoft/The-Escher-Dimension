scoreboard players set temp value 20
scoreboard players add xmax value 4
scoreboard players add ymax value 4
scoreboard players add zmax value 4
execute positioned ~-2 ~1 ~-2 run function tid:dungeon/mutant/carve/run_count
scoreboard players remove xmax value 4
scoreboard players remove ymax value 4
scoreboard players remove zmax value 4
