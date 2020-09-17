#Add vines
execute run execute if block ~1 ~ ~ mossy_cobblestone run setblock ~ ~ ~ vine[east=true]
execute run execute if block ~ ~ ~1 mossy_cobblestone run setblock ~ ~ ~ vine[south=true]
execute run execute if block ~-1 ~ ~ mossy_cobblestone run setblock ~ ~ ~ vine[west=true]
execute run execute if block ~ ~ ~-1 mossy_cobblestone run setblock ~ ~ ~ vine[north=true]

#Add cobwebs
execute if predicate tid:random_25 run execute run execute if block ~ ~-1 ~ #tid:jungle_base_blocks run setblock ~ ~ ~ cobweb
execute if predicate tid:random_25 run execute run execute if block ~ ~1 ~ #tid:jungle_base_blocks run setblock ~ ~ ~ cobweb