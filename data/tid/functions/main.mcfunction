#If the player ever is in a normal dimension, take them to the start point of Layer 1
execute as @a[predicate=tid:in_overworld] run function tid:general/respawn
execute as @a[predicate=tid:in_the_nether] run function tid:general/respawn
execute as @a[predicate=tid:in_the_end] run function tid:general/respawn

#Intro
execute in tid:layer_intro positioned 0 222 0 unless block ~ ~ ~ bedrock run scoreboard players reset intro_handler_phase
execute in tid:layer_intro positioned 0 222 0 unless block ~ ~ ~ bedrock run function tid:general/bedrock_cage
execute if entity @a[predicate=tid:in_layer_intro] in tid:layer_intro if block 0 222 0 bedrock run function tid:dungeon/intro/intro_handler

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

#Babirusan Undergrounds
execute in tid:layer_sin positioned 0 182 0 unless block ~ ~ ~ bedrock run scoreboard players reset sin_handler_phase
execute in tid:layer_sin positioned 0 182 0 unless block ~ ~ ~ bedrock run function tid:general/bedrock_cage
execute if entity @a[predicate=tid:in_layer_sin] in tid:layer_sin if block 0 182 0 bedrock run function tid:dungeon/sin/sin_handler

#Reliquary Outpost
execute in tid:layer_jungle positioned 0 192 0 unless block ~ ~ ~ bedrock run scoreboard players reset jungle_handler_phase
execute in tid:layer_jungle positioned 0 192 0 unless block ~ ~ ~ bedrock run function tid:general/bedrock_cage
execute if entity @a[predicate=tid:in_layer_jungle] in tid:layer_jungle if block 0 192 0 bedrock run function tid:dungeon/jungle/jungle_handler

#Infernal Industries
execute in tid:layer_infernal positioned 0 54 0 unless block ~ ~ ~ bedrock run scoreboard players reset infernal_handler_phase
execute in tid:layer_infernal positioned 0 54 0 unless block ~ ~ ~ bedrock run function tid:general/bedrock_cage
execute if entity @a[predicate=tid:in_layer_infernal] in tid:layer_infernal if block 0 54 0 bedrock run function tid:dungeon/infernal/infernal_handler

#The Corridors
execute in tid:layer_finale positioned 0 142 0 unless block ~ ~ ~ bedrock run scoreboard players reset finale_handler_phase
execute in tid:layer_finale positioned 0 142 0 unless block ~ ~ ~ bedrock run function tid:general/bedrock_cage
execute if entity @a[predicate=tid:in_layer_finale] in tid:layer_finale if block 0 142 0 bedrock run function tid:dungeon/finale/finale_handler

#Entrance Messages
function tid:intro/check

#Other Misc Checks
execute as @e[type=minecraft:area_effect_cloud,name="station_pillar"] at @s run function tid:misc/station_pillar
execute as @e[type=minecraft:area_effect_cloud,name="summon_redstone"] at @s run function tid:misc/summon_redstone
execute as @e[type=minecraft:area_effect_cloud,name="summon_mob"] at @s if entity @p[distance=0..18] run function tid:misc/summon_mob
execute as @e[type=minecraft:area_effect_cloud,name="power_drill"] at @s run function tid:misc/power_drill_check
execute as @e[type=minecraft:sheep] run data modify entity @s Color set value 0
effect clear @a bad_omen
execute if score victory value matches 1 run function tid:general/victory_tick
execute as @e[type=armor_stand,tag=spawncloud] at @s run function tid:gameplay/spawncloud

#Haunted Chests
#Soulsand Arena
execute as @e[type=minecraft:area_effect_cloud,name="soulsand_arena_detector"] at @s unless data block ~ ~-1 ~ {LootTable:"tid:chests/soulsand"} run function tid:misc/soulsand_arena_detect
execute as @e[type=minecraft:area_effect_cloud,name="soulsand_arena_detector"] at @s unless block ~ ~-1 ~ chest run function tid:misc/soulsand_arena_detect
#Jungle Illusioner
execute as @e[type=minecraft:area_effect_cloud,name="illusioner_detector"] at @s unless data block ~ ~-1 ~ {LootTable:"tid:chests/jungle_illusioner"} run function tid:misc/illusioner_detect
execute as @e[type=minecraft:area_effect_cloud,name="illusioner_detector"] at @s unless block ~ ~-1 ~ chest run function tid:misc/illusioner_detect

#Gameplay stuff
#Player team
team join players @a
#Item Checks
execute as @a at @s run function tid:gameplay/item_checks
#Custom Potion
function tid:gameplay/custom_potions
#Ghast Fireballs
execute as @e[type=fireball] at @s run function tid:gameplay/powerup_fireballs
#Bridge Snowball
execute as @e[type=snowball,nbt={Item:{tag:{bridge_snowball:1b}}}] at @s run function tid:gameplay/bridge_snowball
execute as @e[type=area_effect_cloud,name="snow_placer"] at @s run function tid:gameplay/bridge_snowball_place
#Custom Arrows
execute as @e[type=arrow,nbt={CustomPotionEffects:[{}]}] run data modify entity @s pickup set value 0
execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:27b,Amplifier:13b}]}] at @s run function tid:gameplay/bounce_arrow
execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:27b,Amplifier:14b}]}] at @s run function tid:gameplay/bounce_arrow
execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:27b,Amplifier:15b}],inGround:1b}] at @s run function tid:gameplay/breaker_arrow
execute as @e[type=arrow,nbt={CustomPotionEffects:[{}],inGround:1b}] at @s run function tid:gameplay/arrow_fizzle
execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:27b,Amplifier:1b}]}] at @s run function tid:gameplay/shredder_arrow
execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:27b,Amplifier:2b}]}] at @s run function tid:gameplay/sniper_arrow
execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:27b,Amplifier:3b}]}] at @s run function tid:gameplay/zapper_arrow
execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:27b,Amplifier:6b}]}] at @s run function tid:gameplay/evocation_arrow
#Fireworks
scoreboard players reset @a fireworks_kills
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{plague_missile:1}}}] at @s run function tid:gameplay/plague_missile
#execute as @e[type=armor_stand,tag=turret] at @s run function tid:gameplay/turret
#execute as @a at @s run function tid:gameplay/shield_curse
#Lifesteal
execute as @a at @s run function tid:gameplay/pending_hunger
#Final Boss Cores
execute as @e[type=area_effect_cloud,name="finale_boss_core"] at @s run function tid:misc/finale_core
#Evoker Fangs
execute as @e[type=area_effect_cloud,tag=fang_damage] at @s run function tid:gameplay/fang_damage
#Hook Weapons
function tid:gameplay/hooks

#Handles custom monster effects
#Fireflare
execute as @e[type=minecraft:zombie,tag=fireflare] at @s run function tid:gameplay/ai_fireflare
#Debris Demon
execute as @e[type=minecraft:husk,tag=debris_demon] at @s run function tid:gameplay/ai_debris_demon
# New Debris Demon
execute as @e[type=minecraft:husk,tag=debris_demon2] at @s run function tid:gameplay/ai_breaker
execute as @e[type=minecraft:area_effect_cloud,tag=tid_breaker_projectile] at @s rotated as @s run function tid:gameplay/ai_breaker_projectile
execute as @e[type=minecraft:area_effect_cloud,tag=tid_breaker_marker] at @s rotated as @s run function tid:gameplay/ai_breaker_marker
# Flesheater
execute as @e[type=minecraft:skeleton,tag=jumping_skeleton] at @s run function tid:gameplay/ai_jumping_skeleton
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
#War Pigs
execute as @e[type=minecraft:zombified_piglin,tag=war_pig] at @s run function tid:gameplay/ai_war_pig
execute as @e[type=minecraft:arrow,tag=war_pig_fireball] at @s run function tid:gameplay/ai_war_pig_fireball
#Glowing Monsters
execute as @e[tag=glowing] at @s run function tid:gameplay/ai_glowing
#Fountain of Flame
execute as @e[type=minecraft:zombie,tag=fire_fountain] at @s run function tid:gameplay/ai_fire_fountain
#Sporemage
execute as @e[type=minecraft:zombie,tag=sporemage] at @s run function tid:gameplay/ai_sporemage
#Vexes
execute as @e[type=vex,tag=!keep] at @s run function tid:gameplay/ai_vex
#Murder-Bees
execute as @e[type=bee] at @s run function tid:gameplay/ai_bee
#Factory Automaton
execute as @e[type=zombie,tag=auto] at @s run function tid:gameplay/ai_auto
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",tag:{auto_death:1b}}}] at @s run function tid:gameplay/ai_auto_death
#Deathweb
execute as @e[type=item,nbt={Item:{id:"minecraft:string",tag:{deathweb:1b}}}] at @s run function tid:gameplay/deathweb
#Spellcaster Death Effect
execute as @e[type=item,nbt={Item:{id:"minecraft:arrow",tag:{spellcaster:1b}}}] at @s run function tid:gameplay/spellcaster
#Ice Blaze
#execute as @e[type=blaze,tag=ice_blaze] at @s run function tid:gameplay/ai_ice_blaze
#Farie Summoner
execute as @e[type=zombie,tag=farie_summoner] at @s run function tid:gameplay/ai_farie_summoner
#Priest
execute as @e[type=zombie,tag=priest] at @s run function tid:gameplay/ai_priest
#Grave Item
execute as @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh",tag:{cursed:1b}}}] at @s run function tid:gameplay/ai_grave_summon
#Grave Site
execute as @e[type=area_effect_cloud,tag=grave] at @s run function tid:gameplay/ai_grave
#Priest Summoner
execute as @e[type=zombie,tag=priest_summoner] at @s run function tid:gameplay/ai_priest_summoner
#Potion Carrier Summoner
execute as @e[type=zombie,tag=potion_carrier_summoner] at @s run function tid:gameplay/ai_potion_carrier_summoner
execute as @e[type=blaze,tag=potion_carrier_summoner] at @s run function tid:gameplay/ai_potion_carrier_summoner
execute as @e[type=skeleton,tag=potion_carrier_summoner] at @s run function tid:gameplay/ai_potion_carrier_summoner
execute as @e[type=wither_skeleton,tag=potion_carrier_summoner] at @s run function tid:gameplay/ai_potion_carrier_summoner
#Farie Summoner Summoner
execute as @e[type=zombie,tag=farie_summoner_summoner] at @s run function tid:gameplay/ai_farie_summoner_summoner

#Handle monster spawning replacement
execute as @e[type=zombie_villager,tag=!keep,tag=!done] at @s run function tid:gameplay/replace_spawns
#Underwater spawns
execute as @e[type=cod,tag=!keep] at @s run function tid:gameplay/replace_water_spawns
#Babirusan Undergrounds spawns
execute as @e[type=hoglin,tag=!keep] at @s run function tid:gameplay/replace_sin_spawns

#Give armor to skeletons in infernal
execute as @e[type=minecraft:skeleton,predicate=tid:in_layer_infernal,tag=!armored] at @s run function tid:custom_mobs/equip/infernal_skeleton
execute as @e[type=minecraft:wither_skeleton,predicate=tid:in_layer_infernal,tag=!armored] at @s run function tid:custom_mobs/equip/infernal_wither_skeleton

# Handle levitation dispensers
execute as @e[type=minecraft:area_effect_cloud,tag=levitation_dispenser] at @s run function tid:gameplay/levitation_dispenser

#Remove Baby Zombies from the spawning pool
tp @e[type=minecraft:zombie,nbt={IsBaby:1b},name=!"Fireflare"] 1 -100 1

#Runs the teleporters
execute as @e[type=area_effect_cloud,name="teleporter"] at @s run function tid:general/teleporter

#Protects dye and wool items
execute as @e[type=item] run function tid:general/protect_dyes

#Handle death and graves
execute as @a at @s run function tid:general/death_check

#Test the victory monument for completion
execute in tid:layer_1 run function tid:general/test_victory_monument
