execute if predicate tid:random_50 if block ~ ~ ~ air run setblock ~ ~ ~ coal_ore
execute if predicate tid:random_50 if block ~ ~ ~ air run setblock ~ ~ ~ stone

execute if predicate tid:random_50 if block ~ ~1 ~ air unless block ~ ~ ~ air run setblock ~ ~1 ~ coal_ore
execute if predicate tid:random_50 if block ~ ~1 ~ air unless block ~ ~ ~ air run setblock ~ ~1 ~ stone

execute if predicate tid:random_50 if block ~ ~2 ~ air unless block ~ ~1 ~ air run setblock ~ ~2 ~ coal_ore
execute if predicate tid:random_50 if block ~ ~2 ~ air unless block ~ ~1 ~ air run setblock ~ ~2 ~ stone