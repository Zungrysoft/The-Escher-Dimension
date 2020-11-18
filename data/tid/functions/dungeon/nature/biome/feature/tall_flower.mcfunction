#Places either a rose bush or a peony at random
execute if block ~ ~-1 ~ grass_block if block ~ ~ ~ air run setblock ~ ~ ~ rose_bush[half=lower]
execute if block ~ ~-1 ~ grass_block if block ~ ~ ~ rose_bush if predicate tid:random_60 run setblock ~ ~ ~ peony[half=lower]

execute if block ~ ~ ~ rose_bush[half=lower] run setblock ~ ~1 ~ rose_bush[half=upper]
execute if block ~ ~ ~ peony[half=lower] run setblock ~ ~1 ~ peony[half=upper]
