#One pillar of an infernal dirt pile
execute if predicate tid:random_50 if block ~ ~ ~ air run setblock ~ ~ ~ coarse_dirt
execute if predicate tid:random_50 if block ~ ~ ~ coarse_dirt if block ~ ~1 ~ air run setblock ~ ~1 ~ coarse_dirt
execute if predicate tid:random_50 if block ~ ~1 ~ coarse_dirt if block ~ ~2 ~ air run setblock ~ ~2 ~ coarse_dirt
execute if predicate tid:random_005 if block ~ ~ ~ coarse_dirt run setblock ~ ~ ~ ancient_debris
