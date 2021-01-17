#Build base
fill ~ ~-1 ~ ~19 ~-10 ~19 stone_bricks
execute positioned ~ ~128 ~ run fill ~ ~-2 ~ ~19 ~-10 ~19 blue_wool

execute positioned ~8 ~-1 ~8 run function tid:dungeon/infernal/tower/select_short_small
