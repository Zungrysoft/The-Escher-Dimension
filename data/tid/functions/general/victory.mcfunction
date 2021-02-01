#Empty the boss's health bar
bossbar set minecraft:boss value 0

#Grant immunity to everyone
effect give @a minecraft:resistance 60 4

#Set the victory flag
scoreboard players set victory value 1

#Set the duration of the explosions
scoreboard players set explosion_timeleft value 180

#Schedule the function to announce victory
schedule function tid:general/victory_after 10s
