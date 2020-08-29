#Reset counters
scoreboard players set @s tries 0
scoreboard players set @s counter1 0

#Open up slots for more iron
setblock ~1 ~6 ~ air
setblock ~-1 ~6 ~ air
setblock ~ ~6 ~1 air
setblock ~ ~6 ~-1 air