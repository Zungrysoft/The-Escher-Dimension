#Clear out the area for the player
fill ~ ~ ~ ~9 146 ~9 air replace obsidian

#Decorate the floor
execute positioned ~ ~-1 ~ run function tid:dungeon/wicked/rng/run_rng

