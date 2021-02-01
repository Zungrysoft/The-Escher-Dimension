#Teleport player
tp @s ~ ~ ~

#Remove blocks directly on the player
fill ~ ~ ~ ~ ~1 ~ air destroy

#Remove hazards nearby
fill ~-4 ~ ~-4 ~4 ~4 ~4 air replace lava
fill ~-4 ~ ~-4 ~4 ~4 ~4 air replace fire
