#Phase 0: Wait for station_cave_segments to finish generating. Then signal them to move to the next phase
#execute if score @s phase matches 0 run say MASTER PHASE 0
execute if score @s phase matches 0 if score @s tries matches ..0 run scoreboard players set @e[name="station_cave_segment",type=area_effect_cloud] phase 1
execute if score @s phase matches 0 if score @s tries matches ..0 run scoreboard players set @s phase 1

#Phase 1: Wait for station_cave_segments to move onto phase 2. Once they do, signal them all to move onto phase 3.
#execute if score @s phase matches 1 run say MASTER PHASE 1
execute if score @s phase matches 1 run scoreboard players set @s failed 0
execute if score @s phase matches 1 run execute as @e[name="station_cave_segment",type=area_effect_cloud] unless score @s phase matches 2 run scoreboard players set @e[tag=station_handler,limit=1] failed 1
execute if score @s phase matches 1 run execute unless score @s failed matches 1 run scoreboard players set @e[name="station_cave_segment",type=area_effect_cloud] phase 3
execute if score @s phase matches 1 run execute unless score @s failed matches 1 run scoreboard players set @s phase 2

#Phase 2: Wait for all station_cave segments to kill themselves.
execute if score @s phase matches 2 unless entity @e[name="station_cave_segment",type=area_effect_cloud] run scoreboard players set @s phase 3

#Phase 3: Start the dungeon generation
execute if score @s phase matches 3 run summon minecraft:area_effect_cloud 1 1 1 {Duration:99999999,CustomName:"\"stronghold2_roomcount\""}
execute if score @s phase matches 3 run summon minecraft:area_effect_cloud 1 1 1 {Duration:99999999,CustomName:"\"station_roomcount\""}
execute if score @s phase matches 3 run summon minecraft:area_effect_cloud 1 1 1 {Duration:99999999,CustomName:"\"soulsand_roomcount\""}
execute if score @s phase matches 3 run summon minecraft:area_effect_cloud 1 1 1 {Duration:99999999,CustomName:"\"brick_roomcount\""}


execute if score @s phase matches 3 run say Generating Damnation Station...
execute if score @s phase matches 3 run setblock ~-5 ~-3 ~-31 minecraft:structure_block{name: "tid:station/entrance_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s phase matches 3 run setblock ~-5 ~-2 ~-31 minecraft:redstone_block
execute if score @s phase matches 3 run fill ~-5 ~125 ~-31 ~5 ~133 ~-1 minecraft:blue_wool

execute if score @s phase matches 3 run schedule function tid:dungeon/station_generate_straggler_execute 1s replace

execute if score @s phase matches 3 run say Generating Stronghold Ruins...
execute if score @s phase matches 3 positioned 0 55 5 run setblock ~-6 ~-5 ~1 minecraft:structure_block{name: "tid:stronghold2/entrance_south", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s phase matches 3 positioned 0 55 5 run setblock ~-6 ~-4 ~1 minecraft:redstone_block
execute if score @s phase matches 3 positioned 0 55 5 run fill ~-6 ~123 ~1 ~6 ~134 ~21 minecraft:blue_wool

execute if score @s phase matches 3 run say Generating Boomstick Basement...
execute if score @s phase matches 3 positioned -5 55 0 run setblock ~-20 ~-20 ~-7 minecraft:structure_block{name: "tid:brick/entrance_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s phase matches 3 positioned -5 55 0 run setblock ~-20 ~-19 ~-7 minecraft:redstone_block
execute if score @s phase matches 3 positioned -5 55 0 run fill ~-20 ~108 ~-7 ~-1 ~134 ~8 minecraft:blue_wool
execute if score @s phase matches 3 positioned -5 55 0 run setblock ~-16 ~-26 ~-3 minecraft:structure_block{name: "tid:brick/entrance_nexus", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s phase matches 3 positioned -5 55 0 run setblock ~-16 ~-25 ~-3 minecraft:redstone_block
execute if score @s phase matches 3 positioned -5 55 0 run fill ~-15 ~102 ~-2 ~-10 ~107 ~3 minecraft:blue_wool

execute if score @s phase matches 3 run say Generating Soul Sand Arenas...
execute if score @s phase matches 3 positioned 5 55 0 run setblock ~1 ~-1 ~-6 minecraft:structure_block{name: "tid:soulsand/entrance_east", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score @s phase matches 3 positioned 5 55 0 run setblock ~1 ~0 ~-6 minecraft:redstone_block
execute if score @s phase matches 3 positioned 5 55 0 run fill ~1 ~127 ~-6 ~28 ~143 ~6 minecraft:blue_wool

execute if score @s phase matches 3 run scoreboard players set @s phase 4

#Phase 4: Wait for Soul Sand Dungeon to complete
execute if score @s phase matches 4 unless entity @e[name="soulsand_north"] unless entity @e[name="soulsand_south"] unless entity @e[name="soulsand_east"] unless entity @e[name="soulsand_west"] unless entity @e[name="soulsand_up"] unless entity @e[name="soulsand_down"] run scoreboard players set @s phase 5

#Phase 5: Finish dungeon generation
execute if score @s phase matches 5 run function tid:dungeon/soulsand_load
execute if score @s phase matches 5 run fill -5 55 -5 5 60 5 minecraft:air replace bedrock
execute if score @s phase matches 5 run function tid:test_gear
execute if score @s phase matches 5 run function tid:intro/layer_1
execute if score @s phase matches 5 run kill @s





