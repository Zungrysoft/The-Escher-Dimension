#Multiply the roughness by the falloff so the deltas will get less intense as distances shrink
scoreboard players set calc value 100
scoreboard players operation roughness value *= falloff value
scoreboard players operation roughness value /= calc value
scoreboard players operation roughnesshalf value = roughness value
scoreboard players operation roughnesshalf value /= calc2 value
