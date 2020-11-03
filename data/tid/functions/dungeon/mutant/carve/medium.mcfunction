#Fill with warped wart block
fill ~-4 ~-3 ~-4 ~4 ~6 ~4 warped_wart_block replace stone

#Carve out center circle
fill ~2 ~1 ~1 ~-2 ~-1 ~-1 air replace warped_wart_block
fill ~1 ~2 ~1 ~-1 ~-2 ~-1 air replace warped_wart_block
fill ~1 ~1 ~2 ~-1 ~-1 ~-2 air replace warped_wart_block

#Add pillar carves
execute positioned ~0 ~3 ~0 run function tid:dungeon/mutant/carve/pillar
execute positioned ~1 ~3 ~0 run function tid:dungeon/mutant/carve/pillar
execute positioned ~-1 ~3 ~0 run function tid:dungeon/mutant/carve/pillar

execute positioned ~0 ~3 ~1 run function tid:dungeon/mutant/carve/pillar
execute positioned ~1 ~3 ~1 run function tid:dungeon/mutant/carve/pillar
execute positioned ~-1 ~3 ~1 run function tid:dungeon/mutant/carve/pillar

execute positioned ~0 ~3 ~-1 run function tid:dungeon/mutant/carve/pillar
execute positioned ~1 ~3 ~-1 run function tid:dungeon/mutant/carve/pillar
execute positioned ~-1 ~3 ~-1 run function tid:dungeon/mutant/carve/pillar

execute positioned ~0 ~2 ~-2 run function tid:dungeon/mutant/carve/pillar
execute positioned ~1 ~2 ~-2 run function tid:dungeon/mutant/carve/pillar
execute positioned ~-1 ~2 ~-2 run function tid:dungeon/mutant/carve/pillar

execute positioned ~0 ~2 ~2 run function tid:dungeon/mutant/carve/pillar
execute positioned ~1 ~2 ~2 run function tid:dungeon/mutant/carve/pillar
execute positioned ~-1 ~2 ~2 run function tid:dungeon/mutant/carve/pillar

execute positioned ~-2 ~2 ~0 run function tid:dungeon/mutant/carve/pillar
execute positioned ~-2 ~2 ~1 run function tid:dungeon/mutant/carve/pillar
execute positioned ~-2 ~2 ~-1 run function tid:dungeon/mutant/carve/pillar

execute positioned ~2 ~2 ~0 run function tid:dungeon/mutant/carve/pillar
execute positioned ~2 ~2 ~1 run function tid:dungeon/mutant/carve/pillar
execute positioned ~2 ~2 ~-1 run function tid:dungeon/mutant/carve/pillar

execute positioned ~0 ~ ~-3 run function tid:dungeon/mutant/carve/pillar
execute positioned ~1 ~ ~-3 run function tid:dungeon/mutant/carve/pillar
execute positioned ~-1 ~ ~-3 run function tid:dungeon/mutant/carve/pillar

execute positioned ~0 ~ ~3 run function tid:dungeon/mutant/carve/pillar
execute positioned ~1 ~ ~3 run function tid:dungeon/mutant/carve/pillar
execute positioned ~-1 ~ ~3 run function tid:dungeon/mutant/carve/pillar

execute positioned ~-3 ~ ~0 run function tid:dungeon/mutant/carve/pillar
execute positioned ~-3 ~ ~1 run function tid:dungeon/mutant/carve/pillar
execute positioned ~-3 ~ ~-1 run function tid:dungeon/mutant/carve/pillar

execute positioned ~3 ~ ~0 run function tid:dungeon/mutant/carve/pillar
execute positioned ~3 ~ ~1 run function tid:dungeon/mutant/carve/pillar
execute positioned ~3 ~ ~-1 run function tid:dungeon/mutant/carve/pillar

execute positioned ~2 ~ ~2 run function tid:dungeon/mutant/carve/pillar
execute positioned ~-2 ~ ~2 run function tid:dungeon/mutant/carve/pillar
execute positioned ~2 ~ ~-2 run function tid:dungeon/mutant/carve/pillar
execute positioned ~-2 ~ ~-2 run function tid:dungeon/mutant/carve/pillar
