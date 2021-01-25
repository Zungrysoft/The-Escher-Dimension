#Center
fill ~ ~ ~ ~ ~6 ~ nether_bricks

#Place pillars with north-facing chests
scoreboard players set temp value 0
execute positioned ~ ~ ~-1 run function tid:misc/infernal_doom_pillar_pillar

#Place pillars with south-facing chests
scoreboard players set temp value 1
execute positioned ~ ~ ~1 run function tid:misc/infernal_doom_pillar_pillar

#Place pillars with west-facing chests
scoreboard players set temp value 2
execute positioned ~-1 ~ ~1 run function tid:misc/infernal_doom_pillar_pillar
execute positioned ~-1 ~ ~ run function tid:misc/infernal_doom_pillar_pillar
execute positioned ~-1 ~ ~-1 run function tid:misc/infernal_doom_pillar_pillar

#Place pillars with east-facing chests
scoreboard players set temp value 3
execute positioned ~1 ~ ~1 run function tid:misc/infernal_doom_pillar_pillar
execute positioned ~1 ~ ~ run function tid:misc/infernal_doom_pillar_pillar
execute positioned ~1 ~ ~-1 run function tid:misc/infernal_doom_pillar_pillar
