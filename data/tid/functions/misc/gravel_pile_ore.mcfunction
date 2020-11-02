#Check if this block is completely buried. If so, place ore
execute if block ~1 ~ ~ gravel if block ~-1 ~ ~ gravel if block ~ ~ ~1 gravel if block ~ ~ ~-1 gravel if block ~ ~1 ~ gravel run setblock ~ ~ ~ iron_ore

#Maybe place gold instead
execute if predicate tid:random_20 if block ~ ~ ~ iron_ore run setblock ~ ~ ~ gold_ore

#Maybe place emerald instead
execute if predicate tid:random_08 if block ~ ~ ~ iron_ore run setblock ~ ~ ~ emerald_ore

#Maybe place diamond instead
execute if predicate tid:random_02 if block ~ ~ ~ iron_ore run setblock ~ ~ ~ emerald_ore