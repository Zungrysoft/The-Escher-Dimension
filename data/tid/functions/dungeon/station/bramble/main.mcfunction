#Set the block
execute if block ~ ~ ~ air run setblock ~ ~ ~ nether_wart_block
execute if block ~ ~ ~ warped_hyphae run setblock ~ ~ ~ nether_wart_block
execute if block ~ ~ ~ weeping_vines run setblock ~ ~ ~ nether_wart_block

#Advance the seed
function tid:dungeon/station/bramble/seed_advance

#Track the number of moves
scoreboard players remove station_bramble_movesleft value 1
scoreboard players remove station_bramble_branchmovesleft value 1

#Get the random value from the seed
scoreboard players set calc1 value 20
scoreboard players operation temp value = station_bramble_cur value
scoreboard players operation temp value %= calc1 value

#Make sure the block was actually built before continuing. Prevents bramble from growing through walls.
execute unless block ~ ~ ~ nether_wart_block unless block ~ ~ ~ glowstone run scoreboard players set temp value -1
execute unless block ~ ~ ~ nether_wart_block unless block ~ ~ ~ glowstone run scoreboard players set station_bramble_mode value -1

#Randomly decide the next action
execute if score temp value matches 0..1 run scoreboard players set station_bramble_mode value 0
execute if score temp value matches 2..3 run scoreboard players set station_bramble_mode value 1
execute if score temp value matches 4..5 run scoreboard players set station_bramble_mode value 2
execute if score temp value matches 6..7 run scoreboard players set station_bramble_mode value 3
execute if score temp value matches 8..9 run scoreboard players set station_bramble_mode value 4
execute if score temp value matches 10 run scoreboard players set station_bramble_mode value 5
execute if score temp value matches 15..18 run function tid:dungeon/station/bramble/branch

#Add in a light, the only non-seeded rng in the generator
execute if predicate tid:random_01 unless score station_bramble_branchmovesleft value matches 1.. if block ~ ~ ~ nether_wart_block run setblock ~ ~ ~ glowstone

#Maybe add in vines
execute if predicate tid:random_15 unless score station_bramble_branchmovesleft value matches 1.. if block ~ ~-1 ~ air run setblock ~ ~-1 ~ weeping_vines


#Recurse
scoreboard players set temp2 value 0
execute if score station_bramble_branchmovesleft value matches 1.. run function tid:dungeon/station/bramble/recurse

