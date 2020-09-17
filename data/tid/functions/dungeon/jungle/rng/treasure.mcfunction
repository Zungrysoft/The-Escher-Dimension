#Diamonds are more common underwater
execute if score ycount value matches 0..30 run setblock ~ ~ ~ diamond_ore

#Scatter the ores
execute if predicate tid:random_40 run setblock ~ ~ ~ diamond_ore
execute if predicate tid:random_30 run setblock ~ ~ ~ emerald_ore
execute if predicate tid:random_20 run setblock ~ ~ ~ gold_ore