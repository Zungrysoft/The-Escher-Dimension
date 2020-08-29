#If the player ever is in a normal dimension, take them to the start point of Layer 1
execute as @a[predicate=tid:in_overworld] run function tid:general/respawn
execute as @a[predicate=tid:in_the_nether] run function tid:general/respawn
execute as @a[predicate=tid:in_the_end] run function tid:general/respawn

#Generate The World's Structures if that has not already been done
execute if entity @a[predicate=tid:in_layer_1] in tid:layer_1 unless block 0 54 0 minecraft:bedrock run function tid:generate_1
execute if entity @a[predicate=tid:in_layer_2] in tid:layer_2 unless block 0 54 0 minecraft:bedrock run function tid:generate_2
execute if entity @a[predicate=tid:in_layer_3] in tid:layer_3 unless block 0 54 0 minecraft:bedrock run function tid:generate_3
execute if entity @a[predicate=tid:in_layer_4] in tid:layer_4 unless block 0 54 0 minecraft:bedrock run function tid:generate_4
execute if entity @a[predicate=tid:in_layer_5] in tid:layer_5 unless block 0 54 0 minecraft:bedrock run function tid:generate_5
execute if entity @a[predicate=tid:in_layer_6] in tid:layer_6 unless block 0 54 0 minecraft:bedrock run function tid:generate_6
execute if entity @a[predicate=tid:in_layer_sin] in tid:layer_sin unless block 0 182 0 minecraft:bedrock run function tid:generate_sin

#Layer 1
execute if entity @a[predicate=tid:in_layer_1] in tid:layer_1 run function tid:dungeon/layer_1/layer_1_handler
execute in tid:layer_1 positioned 0 55 0 unless block ~ ~ ~ bedrock run function tid:bedrock_cage

#Hellion
execute if entity @a[predicate=tid:in_layer_hellion] in tid:layer_hellion run function tid:dungeon/hellion/hellion_handler
execute in tid:layer_hellion positioned 0 182 0 unless block ~ ~ ~ bedrock run function tid:bedrock_cage

#Automatic Scoreboard Stuff
execute as @e run function tid:update_coords

#Handle monster spawning replacement
function tid:gameplay/replace_spawns

#Dungeon Generation Checks
execute as @e[type=minecraft:area_effect_cloud,name="station_handler_north"] at @s run function tid:dungeon/station_handler_north
execute as @e[type=minecraft:area_effect_cloud,name="station_cave_segment"] at @s run function tid:dungeon/station_cave_segment_handler
execute as @e[type=minecraft:area_effect_cloud,name="station_entrance_spawner"] at @s run function tid:dungeon/station_initialchecks_north
execute as @e[type=minecraft:area_effect_cloud,name="infernal_handler"] at @s run function tid:dungeon/infernal/infernal_handler
execute as @e[type=minecraft:area_effect_cloud,name="sin_handler"] at @s run function tid:dungeon/sin/sin_handler

execute as @e[type=minecraft:area_effect_cloud,name="station_north"] at @s run function tid:dungeon/station_check_north
execute as @e[type=minecraft:area_effect_cloud,name="station_east"] at @s run function tid:dungeon/station_check_east
execute as @e[type=minecraft:area_effect_cloud,name="station_south"] at @s run function tid:dungeon/station_check_south
execute as @e[type=minecraft:area_effect_cloud,name="station_west"] at @s run function tid:dungeon/station_check_west
execute as @e[type=minecraft:area_effect_cloud,name="station_up"] at @s run function tid:dungeon/station_check_up
execute as @e[type=minecraft:area_effect_cloud,name="station_down"] at @s run function tid:dungeon/station_check_down

execute as @e[type=minecraft:area_effect_cloud,name="soulsand_north"] at @s run function tid:dungeon/soulsand_check_north
execute as @e[type=minecraft:area_effect_cloud,name="soulsand_east"] at @s run function tid:dungeon/soulsand_check_east
execute as @e[type=minecraft:area_effect_cloud,name="soulsand_south"] at @s run function tid:dungeon/soulsand_check_south
execute as @e[type=minecraft:area_effect_cloud,name="soulsand_west"] at @s run function tid:dungeon/soulsand_check_west
execute as @e[type=minecraft:area_effect_cloud,name="soulsand_up"] at @s run function tid:dungeon/soulsand_check_up
execute as @e[type=minecraft:area_effect_cloud,name="soulsand_down"] at @s run function tid:dungeon/soulsand_check_down



#Entrance Messages
execute as @a unless score @s found_stronghold matches 1.. at @s if block ~ ~-1 ~ cracked_stone_bricks if entity @e[name="stronghold2_entrance",distance=..30] run function tid:intro/stronghold2
execute as @a unless score @s found_brick matches 1.. at @s if block ~ ~-1 ~ bricks if entity @e[name="brick_entrance",distance=..30] run function tid:intro/brick
execute as @a unless score @s found_sand1 matches 1.. at @s if block ~ ~-1 ~ sandstone if entity @e[name="sand1_entrance",distance=..30] run function tid:intro/sand1
execute as @a unless score @s found_sand2 matches 1.. at @s if block ~ ~-1 ~ red_sandstone if entity @e[name="sand2_entrance",distance=..30] run function tid:intro/sand2
execute as @a unless score @s found_station matches 1.. at @s if block ~ ~-1 ~ red_nether_bricks if entity @e[name="station_entrance",distance=..30] run function tid:intro/station
execute as @a unless score @s found_soulsand matches 1.. at @s if block ~ ~-1 ~ soul_soil if entity @e[name="soulsand_entrance",distance=..30] run function tid:intro/soulsand
execute as @a unless score @s found_wildfire matches 1.. at @s if block ~ ~-1 ~ spruce_planks if entity @e[name="wildfire_entrance",distance=..30] run function tid:intro/wildfire
execute as @a unless score @s found_sin matches 1.. at @s if block ~ ~-1 ~ polished_blackstone_bricks if predicate tid:in_layer_sin run function tid:intro/sin
execute as @a unless score @s found_chambers matches 1.. at @s if entity @e[name="sin_chambers_entrance",distance=..7] run function tid:intro/sin_chambers
execute as @a unless score @s found_hellion matches 1.. at @s if block ~ ~-1 ~ quartz_bricks if predicate tid:in_layer_hellion run function tid:intro/hellion

#Other Misc Checks
execute as @e[type=minecraft:area_effect_cloud,name="station_pillar"] at @s run function tid:misc/station_pillar
execute as @e[type=minecraft:area_effect_cloud,name="station_pillar_crawl"] at @s run function tid:misc/station_pillar_crawl
execute as @e[type=minecraft:area_effect_cloud,name="summon_redstone"] at @s run function tid:misc/summon_redstone
execute as @e[type=minecraft:armor_stand,name="tnt_stick"] at @s run function tid:misc/summon_tnt_stick
execute as @e[type=minecraft:armor_stand,name="station_pillar_base",nbt={OnGround:1b}] at @s run function tid:misc/station_pillar_base
execute as @e[type=minecraft:area_effect_cloud,name="summon_mob"] at @s if entity @p[distance=0..18] run function tid:misc/summon_mob
execute as @e[type=minecraft:firework_rocket,name="glowstone_rocket",nbt={Life:59}] at @s if block ~ ~1 ~ warped_hyphae run setblock ~ ~ ~ glowstone
execute as @e[type=minecraft:firework_rocket,name="ghast_rocket",nbt={Life:59}] at @s if block ~ ~1 ~ warped_hyphae run function tid:misc/ghast_rocket_generate
execute as @e[type=minecraft:area_effect_cloud,name="soulsand_arena_detector"] at @s unless data block ~ ~-1 ~ {LootTable:"tid:chests/soulsand"} run function tid:misc/soulsand_arena_detect
execute as @e[type=minecraft:area_effect_cloud,name="soulsand_arena_detector"] at @s unless block ~ ~-1 ~ chest run function tid:misc/soulsand_arena_detect
execute as @e[type=minecraft:area_effect_cloud,name="power_drill"] at @s run function tid:misc/power_drill_check
kill @e[type=minecraft:armor_stand,tag=builder,nbt={OnGround:1b}]

#Gameplay stuff
execute as @e[type=fireball] at @s run function tid:gameplay/powerup_fireballs
function tid:gameplay/super_flint
scoreboard players set @a damage_dealt 0

#Handles custom monster effects
#Fireflare
execute as @e[type=minecraft:zombie,nbt={IsBaby:1b},name="Fireflare"] at @s if block ~ ~ ~ air run setblock ~ ~ ~ fire
#Debris Demon
execute as @e[type=minecraft:husk,name="Debris Demon"] at @s run function tid:gameplay/ai_debris_demon
#Oxidation Spirit
execute as @e[type=minecraft:stray,name="Oxidation Spirit"] at @s run function tid:gameplay/ai_oxidation_spirit
execute as @e[type=small_fireball,tag=oxidation_fireball] at @s run function tid:gameplay/oxidation_fireball
#Explosion Elemental
execute as @e[type=minecraft:zombie,name="Explosion Elemental"] at @s run function tid:gameplay/ai_explosion_elemental

#Runs the teleporters
execute as @e[type=area_effect_cloud,name="teleporter"] at @s run function tid:general/teleporter

#Protects dye and wool items
function tid:protect_dyes
