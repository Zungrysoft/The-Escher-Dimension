#Scatter the ores
execute if predicate tid:random_diamond run setblock ~ ~ ~ diamond_ore
execute if predicate tid:random_diamond run setblock ~ ~ ~ emerald_ore
execute if predicate tid:random_diamond run setblock ~ ~ ~ gold_ore

#Diamonds are more common underwater
execute if predicate tid:random_diamond if score ycount value matches 0..30 run setblock ~ ~ ~ diamond_ore