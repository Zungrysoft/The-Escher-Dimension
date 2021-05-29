#Setup
gamerule commandBlockOutput false
gamerule keepInventory true
gamerule doTraderSpawning false
gamerule doWeatherCycle false
gamerule doInsomnia false
gamerule disableRaids true
gamerule doPatrolSpawning false
gamerule maxCommandChainLength 1000000000
setworldspawn 0 55 0

#Do starting forceloads in all the dimensions
#Layer 1
scoreboard players set temp value 1
execute in tid:layer_1 if block 0 54 0 bedrock run scoreboard players set temp value 0
execute if score temp value matches 1 in tid:layer_1 run forceload add -7 -7 7 7
#Layer 2
scoreboard players set temp value 1
execute in tid:layer_2 if block 0 54 0 bedrock run scoreboard players set temp value 0
execute if score temp value matches 1 in tid:layer_2 run forceload add -7 -7 7 7
#Layer 3
scoreboard players set temp value 1
execute in tid:layer_3 if block 0 54 0 bedrock run scoreboard players set temp value 0
execute if score temp value matches 1 in tid:layer_3 run forceload add -7 -7 7 7
#Hellion
scoreboard players set temp value 1
execute in tid:layer_hellion if block 0 184 0 bedrock run scoreboard players set temp value 0
execute if score temp value matches 1 in tid:layer_hellion run forceload add -7 -7 7 7
#Sin
scoreboard players set temp value 1
execute in tid:layer_sin if block 0 184 0 bedrock run scoreboard players set temp value 0
execute if score temp value matches 1 in tid:layer_sin run forceload add -7 -7 7 7
#Jungle
scoreboard players set temp value 1
execute in tid:layer_jungle if block 0 194 0 bedrock run scoreboard players set temp value 0
execute if score temp value matches 1 in tid:layer_jungle run forceload add -7 -7 7 7
#Infernal
scoreboard players set temp value 1
execute in tid:layer_infernal if block 0 54 0 bedrock run scoreboard players set temp value 0
execute if score temp value matches 1 in tid:layer_infernal run forceload add -7 -7 7 7
#Finale
scoreboard players set temp value 1
execute in tid:layer_finale if block 0 54 0 bedrock run scoreboard players set temp value 0
execute if score temp value matches 1 in tid:layer_finale run forceload add -7 -7 7 7

#Bossbars
bossbar add boss "The Doom Pillar"
bossbar set minecraft:boss max 6
bossbar set minecraft:boss style notched_6
bossbar set minecraft:boss color purple

#Scoreboard
scoreboard objectives add value dummy
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add north dummy
scoreboard objectives add south dummy
scoreboard objectives add east dummy
scoreboard objectives add west dummy
scoreboard objectives add up dummy
scoreboard objectives add down dummy
scoreboard objectives add tries dummy
scoreboard objectives add failed dummy
scoreboard objectives add succeeded dummy
scoreboard objectives add init dummy
scoreboard objectives add lifesteal dummy
scoreboard objectives add lifesteal_amp dummy
scoreboard objectives add counter1 dummy
scoreboard objectives add counter2 dummy
scoreboard objectives add counter3 dummy
scoreboard objectives add counter4 dummy
scoreboard objectives add phase dummy
scoreboard objectives add on_ground dummy
scoreboard objectives add fall_velocity dummy
scoreboard objectives add power dummy
scoreboard objectives add health_boost dummy
scoreboard objectives add speed_boost dummy
scoreboard objectives add damage_boost dummy
scoreboard objectives add armor_boost dummy
scoreboard objectives add shield_curse dummy
scoreboard objectives add adv_hellion_1 dummy
scoreboard objectives add adv_hellion_2 dummy
scoreboard objectives add adv_hellion_3 dummy
scoreboard objectives add adv_hellion_4 dummy
scoreboard objectives add block_damage minecraft.custom:minecraft.damage_blocked_by_shield
scoreboard objectives add take_damage minecraft.custom:minecraft.damage_taken
scoreboard objectives add cycle_short dummy
scoreboard objectives add tome_use minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add item_used dummy
scoreboard objectives add igneous dummy
scoreboard objectives add fireworks_kills dummy
scoreboard objectives add deaths deathCount "Deaths"
scoreboard objectives add deaths_prev dummy
scoreboard objectives setdisplay list deaths
scoreboard objectives add health health "Health"
scoreboard objectives setdisplay belowName health
scoreboard objectives add pending_hunger dummy
scoreboard objectives add kill_mob totalKillCount
scoreboard objectives add damage_dealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add mine_debris minecraft.mined:minecraft.ancient_debris
scoreboard objectives add mine_diorite minecraft.mined:minecraft.diorite
scoreboard objectives add mine_core minecraft.mined:minecraft.crying_obsidian
scoreboard objectives add use_map minecraft.used:minecraft.map
scoreboard objectives add kill_silverfish minecraft.killed:minecraft.silverfish
scoreboard objectives add sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add mine_spawner minecraft.mined:minecraft.spawner
scoreboard objectives add use_shield minecraft.used:minecraft.shield
scoreboard objectives add kill_creeper minecraft.killed:minecraft.creeper
scoreboard objectives add kill_blaze minecraft.killed:minecraft.blaze
scoreboard objectives add kill_skeleton minecraft.killed:minecraft.skeleton
scoreboard objectives add kill_wither_skel minecraft.killed:minecraft.wither_skeleton
scoreboard objectives add kill_piglin minecraft.killed:minecraft.piglin
scoreboard objectives add kill_brute minecraft.killed:minecraft.piglin_brute
scoreboard objectives add kill_zpig minecraft.killed:minecraft.zombified_piglin
team add players
team add glow
team modify glow color yellow

#Start the particles loop
function tid:general/particles

#Start the advancement checks loop
function tid:general/advancement_checks

#Start the potion carrier loop
function tid:gameplay/ai_potion_carrier

#Start the dealer loop
function tid:gameplay/ai_dealer_all

#Start the half-second loop
function tid:tick_half_second
