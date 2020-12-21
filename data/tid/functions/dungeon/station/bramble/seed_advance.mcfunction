#Set up the calc values
scoreboard players set calc1 value 518
scoreboard players set calc2 value 16693

#Advance the seed value
scoreboard players operation station_bramble_cur value *= calc1 value
scoreboard players operation station_bramble_cur value %= calc2 value