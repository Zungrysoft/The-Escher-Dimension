#Randomize the height of this block by roughness
scoreboard players set temp2 value 0
execute if predicate tid:random_50 run scoreboard players add temp2 value 1
execute if predicate tid:random_50 run scoreboard players add temp2 value 2
execute if predicate tid:random_50 run scoreboard players add temp2 value 4
execute if predicate tid:random_50 run scoreboard players add temp2 value 8
execute if predicate tid:random_50 run scoreboard players add temp2 value 16
execute if predicate tid:random_50 run scoreboard players add temp2 value 32
execute if predicate tid:random_50 run scoreboard players add temp2 value 64
execute if predicate tid:random_50 run scoreboard players add temp2 value 128
execute if predicate tid:random_50 run scoreboard players add temp2 value 256
execute if predicate tid:random_50 run scoreboard players add temp2 value 512
execute if predicate tid:random_50 run scoreboard players add temp2 value 1024
execute if predicate tid:random_50 run scoreboard players add temp2 value 2048
execute if predicate tid:random_50 run scoreboard players add temp2 value 4096
execute if predicate tid:random_50 run scoreboard players add temp2 value 8192
execute if predicate tid:random_50 run scoreboard players add temp2 value 16384
execute if predicate tid:random_50 run scoreboard players add temp2 value 32768
scoreboard players operation temp2 value %= roughness value
scoreboard players operation temp2 value -= roughnesshalf value
scoreboard players operation sum value += temp2 value
