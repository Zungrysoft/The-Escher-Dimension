#Clear out coral nearby
fill ~ ~ ~ ~-1 ~ ~-1 air replace #tid:corals

#Execute the four pillars
setblock ~ ~ ~ netherrack
execute positioned ~ ~1 ~ run function tid:dungeon/nature/biome/feature/netherrack_stalag_pillar
execute positioned ~-1 ~ ~-1 run function tid:dungeon/nature/biome/feature/netherrack_stalag_pillar
execute positioned ~ ~ ~-1 run function tid:dungeon/nature/biome/feature/netherrack_stalag_pillar
execute positioned ~-1 ~ ~ run function tid:dungeon/nature/biome/feature/netherrack_stalag_pillar
