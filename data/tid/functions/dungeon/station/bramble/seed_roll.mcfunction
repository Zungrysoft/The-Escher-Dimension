#Edits the seed for the moon flowers so a new type will begin to generate
scoreboard players set station_bramble_seed value 0
execute if predicate tid:random_50 run scoreboard players add station_bramble_seed value 1
execute if predicate tid:random_50 run scoreboard players add station_bramble_seed value 2
execute if predicate tid:random_50 run scoreboard players add station_bramble_seed value 4
execute if predicate tid:random_50 run scoreboard players add station_bramble_seed value 8
execute if predicate tid:random_50 run scoreboard players add station_bramble_seed value 16
execute if predicate tid:random_50 run scoreboard players add station_bramble_seed value 32
execute if predicate tid:random_50 run scoreboard players add station_bramble_seed value 64
execute if predicate tid:random_50 run scoreboard players add station_bramble_seed value 128
execute if predicate tid:random_50 run scoreboard players add station_bramble_seed value 256
execute if predicate tid:random_50 run scoreboard players add station_bramble_seed value 512
execute if predicate tid:random_50 run scoreboard players add station_bramble_seed value 1024
execute if predicate tid:random_50 run scoreboard players add station_bramble_seed value 2048
execute if predicate tid:random_50 run scoreboard players add station_bramble_seed value 4096
execute if predicate tid:random_50 run scoreboard players add station_bramble_seed value 8192

#Determines how likely it is for this type of flower to generate
scoreboard players set station_bramble_probability 0
execute if predicate tid:random_50 run scoreboard players add station_bramble_seed value 1
execute if predicate tid:random_50 run scoreboard players add station_bramble_seed value 2
execute if predicate tid:random_50 run scoreboard players add station_bramble_seed value 4