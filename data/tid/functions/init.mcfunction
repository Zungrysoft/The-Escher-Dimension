#Setup
gamerule commandBlockOutput false
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
execute in tid:layer_finale if block 0 184 0 bedrock run scoreboard players set temp value 0
execute if score temp value matches 1 in tid:layer_finale run forceload add -7 -7 7 7

#Scoreboard
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
scoreboard objectives add counter1 dummy
scoreboard objectives add counter2 dummy
scoreboard objectives add phase dummy
scoreboard objectives add value dummy
scoreboard objectives add heart_boost dummy
scoreboard objectives add adv_hellion_1 dummy
scoreboard objectives add adv_hellion_2 dummy
scoreboard objectives add adv_hellion_3 dummy
scoreboard objectives add adv_hellion_4 dummy
scoreboard objectives add carrot_stick_use minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add starting_gear dummy
scoreboard objectives add deaths deathCount "Deaths"
scoreboard objectives setdisplay belowName deaths
scoreboard objectives add health health "Health"
scoreboard objectives setdisplay list health
scoreboard objectives add damage_dealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add mine_debris minecraft.mined:minecraft.ancient_debris
scoreboard objectives add use_map minecraft.used:minecraft.map
scoreboard objectives add kill_silverfish minecraft.killed:minecraft.silverfish
team add players
team add glow
team modify glow color yellow

#Start the particles loop
function tid:general/particles

#Start the advancement checks loop
function tid:general/advancement_checks

#Start the potion carrier loop
function tid:gameplay/ai_potion_carrier



