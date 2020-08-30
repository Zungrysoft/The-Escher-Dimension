#Counter tracks the progrss of opening the teleporter
execute unless score @s counter1 matches 100.. if entity @s[tag=!starts_open] run scoreboard players add @s counter1 1

#Run the opening animation
execute if score @s counter1 matches 1 run fill ~1 ~1 ~1 ~2 ~2 ~2 bedrock
execute if score @s counter1 matches 1 run playsound minecraft:block.netherite_block.hit block @a ~1.5 ~-1 ~1.5 2 .5
#Ensures this portal will be searchable from portals in other dimensions
execute if score @s counter1 matches 1 run forceload add ~ ~

execute if score @s counter1 matches 20 run fill ~1 ~2 ~1 ~2 ~2 ~2 air destroy

execute if score @s counter1 matches 30 run fill ~1 ~1 ~1 ~2 ~1 ~2 air destroy

execute if score @s counter1 matches 40 run fill ~1 ~ ~ ~2 ~ ~3 air replace oak_wall_sign
execute if score @s counter1 matches 40 run fill ~ ~ ~1 ~3 ~ ~2 air replace oak_wall_sign
execute if score @s counter1 matches 40 run fill ~1 ~ ~1 ~2 ~ ~2 air destroy

execute if score @s counter1 matches 50 run fill ~1 ~-1 ~1 ~2 ~-1 ~2 air destroy

execute if score @s counter1 matches 60 run fill ~1 ~-2 ~ ~2 ~-2 ~3 sea_lantern replace bedrock
execute if score @s counter1 matches 60 run fill ~ ~-2 ~1 ~3 ~-2 ~2 sea_lantern replace bedrock
execute if score @s counter1 matches 60 run playsound minecraft:block.beacon.activate block @a ~1.5 ~-1 ~1.5
execute if score @s counter1 matches 60 run playsound minecraft:item.lodestone_compass.lock block @a ~1.5 ~-1 ~1.5 1 .7

#If fully open, it can teleport players
execute store result score temp value run data get entity @s Color
execute positioned ~1.5 ~-1 ~1.5 as @a[distance=0..3] at @s if block ~ ~-1 ~ sea_lantern run function tid:general/teleporter_teleport