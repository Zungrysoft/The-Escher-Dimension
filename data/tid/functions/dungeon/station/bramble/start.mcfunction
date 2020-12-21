#Reset variables
scoreboard players operation station_bramble_cur value = station_bramble_seed value
scoreboard players set station_bramble_mode value 0
scoreboard players set station_bramble_branches value 1
scoreboard players set station_bramble_movesleft value 35
scoreboard players operation station_bramble_branchmovesleft value = station_bramble_movesleft value

#Start with the stem
fill ~ ~-1 ~ ~ ~1 ~ nether_wart_block replace air
fill ~ ~-1 ~ ~ ~1 ~ nether_wart_block replace warped_hyphae

#Begin the process
function tid:dungeon/station/bramble/seed_roll
execute positioned ~ ~2 ~ run function tid:dungeon/station/bramble/main