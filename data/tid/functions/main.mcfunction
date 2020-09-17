#If the player ever is in a normal dimension, take them to the start point of Layer 1
execute as @a[predicate=tid:in_overworld] run function tid:general/respawn
execute as @a[predicate=tid:in_the_nether] run function tid:general/respawn
execute as @a[predicate=tid:in_the_end] run function tid:general/respawn

#Layer 1
execute in tid:layer_1 positioned 0 54 0 unless block ~ ~ ~ bedrock run function tid:bedrock_cage
execute if entity @a[predicate=tid:in_layer_1] in tid:layer_1 if block 0 54 0 bedrock run function tid:dungeon/layer_1/layer_1_handler

#Layer 3
execute in tid:layer_3 positioned 0 54 0 unless block ~ ~ ~ bedrock run function tid:bedrock_cage
execute if entity @a[predicate=tid:in_layer_3] in tid:layer_3 if block 0 54 0 bedrock run function tid:dungeon/layer_3/layer_3_handler

#Hellion
execute in tid:layer_hellion positioned 0 182 0 unless block ~ ~ ~ bedrock run function tid:bedrock_cage
execute if entity @a[predicate=tid:in_layer_hellion] in tid:layer_hellion if block 0 182 0 bedrock run function tid:dungeon/hellion/hellion_handler

#Jungle
execute in tid:layer_jungle positioned 0 192 0 unless block ~ ~ ~ bedrock run function tid:bedrock_cage
execute if entity @a[predicate=tid:in_layer_jungle] in tid:layer_jungle if block 0 192 0 bedrock run function tid:dungeon/jungle/jungle_handler

#Infernal
execute in tid:layer_infernal positioned 0 54 0 unless block ~ ~ ~ bedrock run function tid:bedrock_cage
execute if entity @a[predicate=tid:in_layer_infernal] in tid:layer_infernal if block 0 54 0 bedrock run function tid:dungeon/infernal/infernal_handler

#Test World
execute in tid:layer_test positioned 0 182 0 unless block ~ ~ ~ bedrock run function tid:bedrock_cage
execute if entity @a[predicate=tid:in_layer_test] in tid:layer_test if block 0 182 0 bedrock run function tid:dungeon/test/test_handler

#Automatic Scoreboard Stuff
execute as @e run function tid:update_coords

#Get rid of monsters outside the world
#execute in tid:layer_1 as @e[type=!player,type=!item] if score @s y matches 128.. run tp @s 0 -100 0

#Handle monster spawning replacement
function tid:gameplay/replace_spawns

#Dungeon Generation Checks
execute as @e[type=minecraft:area_effect_cloud,name="infernal_handler"] at @s run function tid:dungeon/infernal/infernal_handler
execute as @e[type=minecraft:area_effect_cloud,name="sin_handler"] at @s run function tid:dungeon/sin/sin_handler

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
execute as @a unless score @s found_jungle matches 1.. at @s if block ~ ~-1 ~ cobblestone if predicate tid:in_layer_jungle run function tid:intro/jungle

#Other Misc Checks
execute as @e[type=minecraft:area_effect_cloud,name="station_pillar"] at @s run function tid:misc/station_pillar
execute as @e[type=minecraft:area_effect_cloud,name="station_pillar_crawl"] at @s run function tid:misc/station_pillar_crawl
execute as @e[type=minecraft:area_effect_cloud,name="summon_redstone"] at @s run function tid:misc/summon_redstone
execute as @e[type=minecraft:armor_stand,name="tnt_stick"] at @s run function tid:misc/summon_tnt_stick
execute as @e[type=minecraft:armor_stand,name="station_pillar_base",nbt={OnGround:1b}] at @s run function tid:misc/station_pillar_base
execute as @e[type=minecraft:area_effect_cloud,name="summon_mob"] at @s if entity @p[distance=0..18] run function tid:misc/summon_mob
execute as @e[type=minecraft:firework_rocket,name="glowstone_rocket",nbt={Life:59}] at @s if block ~ ~1 ~ warped_hyphae run setblock ~ ~ ~ glowstone
execute as @e[type=minecraft:firework_rocket,name="ghast_rocket",nbt={Life:59}] at @s if block ~ ~1 ~ warped_hyphae if block ~ ~ ~ air run function tid:misc/ghast_rocket_generate
execute as @e[type=minecraft:area_effect_cloud,name="soulsand_arena_detector"] at @s unless data block ~ ~-1 ~ {LootTable:"tid:chests/soulsand"} run function tid:misc/soulsand_arena_detect
execute as @e[type=minecraft:area_effect_cloud,name="soulsand_arena_detector"] at @s unless block ~ ~-1 ~ chest run function tid:misc/soulsand_arena_detect
execute as @e[type=minecraft:area_effect_cloud,name="power_drill"] at @s run function tid:misc/power_drill_check
execute as @e[type=minecraft:sheep] run data modify entity @s Color set value 0
effect clear @a bad_omen

#Gameplay stuff
execute as @e[type=fireball] at @s run function tid:gameplay/powerup_fireballs
function tid:gameplay/super_flint
scoreboard players set @a damage_dealt 0
execute as @a at @s run function tid:gameplay/float_orb

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

#Test the victory monument for completion
execute in tid:layer_1 run function tid:general/test_victory_monument
