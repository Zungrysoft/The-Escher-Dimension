#Teleport player
tp @s ~ ~ ~

#Remove blocks directly on the player
fill ~ ~ ~ ~ ~1 ~ air destroy

#Remove hazards nearby
fill ~-4 ~ ~-4 ~4 ~4 ~4 air replace lava
fill ~-4 ~ ~-4 ~4 ~4 ~4 air replace fire

#Reset xp and effects
#Workaround for a bug where the player sometimes loses their xp and effects temporarily when changing dimensions
xp add @s 1 points
xp add @s -1 points
effect give @s unluck
effect clear @s unluck
