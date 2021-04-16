#Decide on the random id value both entities will share
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2
execute if predicate tid:random_50 run scoreboard players add temp value 4
execute if predicate tid:random_50 run scoreboard players add temp value 8
execute if predicate tid:random_50 run scoreboard players add temp value 16
execute if predicate tid:random_50 run scoreboard players add temp value 32
execute if predicate tid:random_50 run scoreboard players add temp value 64
execute if predicate tid:random_50 run scoreboard players add temp value 128
execute if predicate tid:random_50 run scoreboard players add temp value 256
execute if predicate tid:random_50 run scoreboard players add temp value 512
execute if predicate tid:random_50 run scoreboard players add temp value 1024
execute if predicate tid:random_50 run scoreboard players add temp value 2048
execute if predicate tid:random_50 run scoreboard players add temp value 4096
execute if predicate tid:random_50 run scoreboard players add temp value 8192
execute if predicate tid:random_50 run scoreboard players add temp value 16384
execute if predicate tid:random_50 run scoreboard players add temp value 32768
execute if predicate tid:random_50 run scoreboard players add temp value 65536
execute if predicate tid:random_50 run scoreboard players add temp value 131072
execute if predicate tid:random_50 run scoreboard players add temp value 262144

#Summon the AEC
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["hook","new"]}

#Set the id value to both entities
scoreboard players operation @s counter1 = temp value
scoreboard players operation @e[type=area_effect_cloud,tag=new] counter1 = temp value

#Determine what type of hook the player is using and store it
scoreboard players set @e[type=area_effect_cloud,tag=new] counter2 0
execute as @a[nbt={SelectedItem:{id:"minecraft:fishing_rod"}},sort=nearest,limit=1] store result score @e[type=area_effect_cloud,tag=new] counter2 run data get entity @s SelectedItem.tag.hook_type

#Remove the new tag
tag @e[type=area_effect_cloud,tag=new] remove new

#Add the tracked tag
tag @s add tracked
