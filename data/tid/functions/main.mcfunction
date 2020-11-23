#If the player ever is in a normal dimension, take them to the start point of Layer 1
execute as @a[predicate=tid:in_overworld] run function tid:general/respawn
execute as @a[predicate=tid:in_the_nether] run function tid:general/respawn
execute as @a[predicate=tid:in_the_end] run function tid:general/respawn

#Layer 1
execute in tid:layer_1 positioned 0 54 0 unless block ~ ~ ~ bedrock run scoreboard players reset layer_1_handler_phase
execute in tid:layer_1 positioned 0 54 0 unless block ~ ~ ~ bedrock run function tid:general/bedrock_cage
execute if entity @a[predicate=tid:in_layer_1] in tid:layer_1 if block 0 54 0 bedrock run function tid:dungeon/layer_1/layer_1_handler

#Layer 2
execute in tid:layer_2 positioned 0 54 0 unless block ~ ~ ~ bedrock run scoreboard players reset layer_2_handler_phase
execute in tid:layer_2 positioned 0 54 0 unless block ~ ~ ~ bedrock run function tid:general/bedrock_cage
execute if entity @a[predicate=tid:in_layer_2] in tid:layer_2 if block 0 54 0 bedrock run function tid:dungeon/layer_2/layer_2_handler

#Layer 3
execute in tid:layer_3 positioned 0 54 0 unless block ~ ~ ~ bedrock run scoreboard players reset layer_3_handler_phase
execute in tid:layer_3 positioned 0 54 0 unless block ~ ~ ~ bedrock run function tid:general/bedrock_cage
execute if entity @a[predicate=tid:in_layer_3] in tid:layer_3 if block 0 54 0 bedrock run function tid:dungeon/layer_3/layer_3_handler

#Hellion
execute in tid:layer_hellion positioned 0 182 0 unless block ~ ~ ~ bedrock run scoreboard players reset hellion_handler_phase
execute in tid:layer_hellion positioned 0 182 0 unless block ~ ~ ~ bedrock run function tid:general/bedrock_cage
execute if entity @a[predicate=tid:in_layer_hellion] in tid:layer_hellion if block 0 182 0 bedrock run function tid:dungeon/hellion/hellion_handler

#Babirusan Port
#execute in tid:layer_sin positioned 0 182 0 unless block ~ ~ ~ bedrock run scoreboard players reset sin_handler_phase
#execute in tid:layer_sin positioned 0 182 0 unless block ~ ~ ~ bedrock run function tid:general/bedrock_cage
#execute if entity @a[predicate=tid:in_layer_sin] in tid:layer_sin if block 0 192 0 bedrock run function tid:dungeon/sin/sin_handler

#Reliquary Outpost
execute in tid:layer_jungle positioned 0 192 0 unless block ~ ~ ~ bedrock run scoreboard players reset jungle_handler_phase
execute in tid:layer_jungle positioned 0 192 0 unless block ~ ~ ~ bedrock run function tid:general/bedrock_cage
execute if entity @a[predicate=tid:in_layer_jungle] in tid:layer_jungle if block 0 192 0 bedrock run function tid:dungeon/jungle/jungle_handler

#Infernal
execute in tid:layer_infernal positioned 0 54 0 unless block ~ ~ ~ bedrock run scoreboard players reset infernal_handler_phase
execute in tid:layer_infernal positioned 0 54 0 unless block ~ ~ ~ bedrock run function tid:general/bedrock_cage
execute if entity @a[predicate=tid:in_layer_infernal] in tid:layer_infernal if block 0 54 0 bedrock run function tid:dungeon/infernal/infernal_handler

#The Corridors
execute in tid:layer_finale positioned 0 185 0 unless block ~ ~ ~ bedrock run scoreboard players reset finale_handler_phase
execute in tid:layer_finale positioned 0 185 0 unless block ~ ~ ~ bedrock run function tid:general/bedrock_cage
execute if entity @a[predicate=tid:in_layer_finale] in tid:layer_finale if block 0 185 0 bedrock run function tid:dungeon/finale/finale_handler

#Entrance Messages
execute as @a[advancements={tid:layer_1/find_stronghold2=false}] at @s if entity @e[name="stronghold2_entrance",distance=..5] run function tid:intro/stronghold2
execute as @a[advancements={tid:layer_1/find_brick=false}] at @s if entity @e[name="brick_entrance",distance=..5] run function tid:intro/brick
execute as @a[advancements={tid:layer_1/find_canal=false}] at @s if entity @e[name="canal_entrance",distance=..5] run function tid:intro/canal
execute as @a[advancements={tid:layer_2/find_soulsand=false}] at @s if entity @e[name="soulsand_entrance",distance=..5] run function tid:intro/soulsand
execute as @a[advancements={tid:layer_2/find_sand1=false}] at @s if entity @e[name="sand1_entrance",distance=..5] run function tid:intro/sand1
execute as @a[advancements={tid:layer_2/find_sand2=false}] at @s if block ~ ~-1 ~ #tid:red_sandstone_blocks run function tid:intro/sand2
execute as @a[advancements={tid:layer_2/find_nature=false}] at @s if entity @e[name="nature_entrance",distance=..5] run function tid:intro/nature
execute as @a[advancements={tid:layer_2/find_neon=false}] at @s if entity @e[name="neon_entrance",distance=..5] run function tid:intro/neon
execute as @a[advancements={tid:layer_3/find_station=false}] at @s if entity @e[name="station_entrance",distance=..5] run function tid:intro/station
execute as @a[advancements={tid:layer_3/find_moon=false}] at @s if entity @e[name="moon_entrance",distance=..5] run function tid:intro/moon
execute as @a[advancements={tid:layer_3/find_mutant=false}] at @s if entity @e[name="mutant_entrance",distance=..5] run function tid:intro/mutant
execute as @a[advancements={tid:hellion/root=false}] at @s if block ~ ~-1 ~ quartz_bricks if predicate tid:in_layer_hellion run function tid:intro/hellion
execute as @a[advancements={tid:sin/root=false}] at @s if block ~ ~-1 ~ polished_blackstone_bricks if predicate tid:in_layer_sin run function tid:intro/sin
execute as @a[advancements={tid:sin/find_sin_chambers=false}] at @s if entity @e[name="sin_chambers_entrance",distance=..7] run function tid:intro/sin_chambers
execute as @a[advancements={tid:jungle/root=false}] at @s if block ~ ~-1 ~ #tid:jungle_blocks if predicate tid:in_layer_jungle run function tid:intro/jungle
execute as @a[advancements={tid:infernal/root=false}] at @s if block ~ ~-1 ~ #tid:infernal_blocks if predicate tid:in_layer_infernal run function tid:intro/infernal

#Other Misc Checks
execute as @e[type=minecraft:area_effect_cloud,name="station_pillar"] at @s run function tid:misc/station_pillar
execute as @e[type=minecraft:area_effect_cloud,name="summon_redstone"] at @s run function tid:misc/summon_redstone
execute as @e[type=minecraft:area_effect_cloud,name="summon_mob"] at @s if entity @p[distance=0..18] run function tid:misc/summon_mob
execute as @e[type=minecraft:area_effect_cloud,name="power_drill"] at @s run function tid:misc/power_drill_check
execute as @e[type=minecraft:sheep] run data modify entity @s Color set value 0
effect clear @a bad_omen

#Haunted Chests
#Soulsand Arena
execute as @e[type=minecraft:area_effect_cloud,name="soulsand_arena_detector"] at @s unless data block ~ ~-1 ~ {LootTable:"tid:chests/soulsand"} run function tid:misc/soulsand_arena_detect
execute as @e[type=minecraft:area_effect_cloud,name="soulsand_arena_detector"] at @s unless block ~ ~-1 ~ chest run function tid:misc/soulsand_arena_detect
#Jungle Illusioner
execute as @e[type=minecraft:area_effect_cloud,name="illusioner_detector"] at @s unless data block ~ ~-1 ~ {LootTable:"tid:chests/jungle_illusioner"} run function tid:misc/illusioner_detect
execute as @e[type=minecraft:area_effect_cloud,name="illusioner_detector"] at @s unless block ~ ~-1 ~ chest run function tid:misc/illusioner_detect

#Gameplay stuff
team join players @a
execute as @e[type=fireball] at @s run function tid:gameplay/powerup_fireballs
execute as @a at @s run function tid:gameplay/float_orb
execute as @a run function tid:gameplay/heart_scroll
execute as @a at @s run function tid:gameplay/conditional_weapons
execute as @a at @s run function tid:gameplay/staff_oxidation
execute as @a at @s run function tid:gameplay/staff_summoning
execute as @a at @s run function tid:gameplay/staff_block
execute as @a at @s run function tid:gameplay/custom_potions
execute as @a at @s run function tid:gameplay/no_sprint
execute as @e[type=snowball,nbt={Item:{tag:{bridge_snowball:1b}}}] at @s run function tid:gameplay/bridge_snowball
execute as @e[type=area_effect_cloud,name="snow_placer"] at @s run function tid:gameplay/bridge_snowball_place
scoreboard players set @a damage_dealt 0
scoreboard players set @a carrot_stick_use 0
execute as @e[type=arrow,nbt={CustomPotionEffects:[{}]}] run data modify entity @s pickup set value 2

#Handles custom monster effects
#Fireflare
execute as @e[type=minecraft:zombie,tag=fireflare] at @s if block ~ ~ ~ air run setblock ~ ~ ~ fire[age=7]
#Debris Demon
execute as @e[type=minecraft:husk,tag=debris_demon] at @s run function tid:gameplay/ai_debris_demon
#Oxidation Spirit
execute as @e[type=minecraft:stray,tag=oxidation_spirit] at @s run function tid:gameplay/ai_oxidation_spirit
execute as @e[type=small_fireball,tag=oxidation_fireball] at @s run function tid:gameplay/oxidation_fireball
#Explosion Elemental
execute as @e[type=minecraft:zombie,tag=explosion_elemental] at @s run function tid:gameplay/ai_explosion_elemental
execute as @e[type=tnt,tag=elemental] at @s run function tid:gameplay/ai_explosion_elemental_tnt
#Alloy Elemental
execute as @e[type=minecraft:zombie,tag=alloy_elemental] at @s run function tid:gameplay/ai_alloy_elemental
#Summoned Minions
execute as @e[tag=summon] at @s run function tid:gameplay/ai_summon
#Glowing Monsters
execute as @e[tag=glowing] at @s run function tid:gameplay/ai_glowing
#Fountain of Flame
execute as @e[type=minecraft:zombie,tag=fire_fountain] at @s run function tid:gameplay/ai_fire_fountain
#Vexes
execute as @e[type=vex] at @s run function tid:gameplay/ai_vex
#Murder-Bees
execute as @e[type=bee] at @s run function tid:gameplay/ai_bee

#Handle monster spawning replacement
execute as @e[type=zombie_villager,tag=!keep] at @s run function tid:gameplay/replace_spawns
#Handle monster spawning replacement
execute as @e[type=cod,tag=!keep] at @s run function tid:gameplay/replace_water_spawns

#Remove Baby Zombies from the spawning pool
tp @e[type=minecraft:zombie,nbt={IsBaby:1b},name=!"Fireflare"] 1 -100 1

#Runs the teleporters
execute as @e[type=area_effect_cloud,name="teleporter"] at @s run function tid:general/teleporter

#Protects dye and wool items
function tid:general/protect_dyes

#Test the victory monument for completion
execute in tid:layer_1 run function tid:general/test_victory_monument
