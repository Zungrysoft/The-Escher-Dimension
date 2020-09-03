#Setup
gamerule commandBlockOutput false
gamerule doTraderSpawning false
#gamerule randomTickSpeed 5
gamerule doWeatherCycle false
gamerule doInsomnia false
execute in tid:layer_1 run forceload add -7 -7 7 7
execute in tid:layer_4 run forceload add -7 -7 7 7
execute in tid:layer_hellion run forceload add -7 -7 7 7

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
scoreboard objectives add phase dummy
scoreboard objectives add value dummy
scoreboard objectives add found_stronghold dummy
scoreboard objectives add found_brick dummy
scoreboard objectives add found_sand1 dummy
scoreboard objectives add found_station dummy
scoreboard objectives add found_soulsand dummy
scoreboard objectives add found_wildfire dummy
scoreboard objectives add found_sin dummy
scoreboard objectives add found_chambers dummy
scoreboard objectives add found_hellion dummy
scoreboard objectives add starting_gear dummy
scoreboard objectives add deaths deathCount "Deaths"
scoreboard objectives setdisplay belowName deaths
scoreboard objectives add health health "Health"
scoreboard objectives setdisplay list health
scoreboard objectives add damage_dealt minecraft.custom:minecraft.damage_dealt

#Start the particles loop
function tid:particles



