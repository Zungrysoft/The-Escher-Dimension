#Generate Damnation Station bramble
execute as @e[type=area_effect_cloud,name="station_bramble_marker"] at @s run function tid:dungeon/station/bramble/scatter

#Add dropout stairwells to The Moon Zone
execute as @e[type=area_effect_cloud,name="moon_dropout"] at @s run function tid:misc/moon_dropout

#Remove the cage
fill -5 55 -5 5 59 5 air replace bedrock

#Add the teleporter
summon minecraft:area_effect_cloud -6 55 -6 {Duration:99999999,CustomName:"\"teleporter\"",Color:3b,Tags:["starts_open"]}

#Remove straggler markers
kill @e[type=area_effect_cloud,name="station_straggler_start"]
kill @e[type=area_effect_cloud,name="moon_straggler_start"]
kill @e[type=area_effect_cloud,name="moon_tower_marker"]

#Remove nexus safeguard
fill 22 60 -27 -23 54 29 stone replace cobblestone

# Replace warped hyphae at entrance with stone
fill -9 58 -28 9 55 -28 stone replace warped_hyphae

#Add in the bonus chest
setblock 5 55 6 minecraft:chest[facing=north]{Items: [{Slot: 11b, id: "minecraft:diamond_block", Count: 1b},{Slot: 13b, id: "minecraft:written_book", Count: 1b, tag: {smithing_tutorial:1b, pages: ['{"text":"Remember to upgrade found loot! If you find stone or leather gear, you can upgrade it using an iron or diamond block."}'], title: "Smithing Reminder", author: "ZungryWare", resolved: 1b}},{Slot: 15b, id: "minecraft:potion", Count: 1b, tag: {Potion: "minecraft:luck"}}]}
setblock 6 55 6 minecraft:smithing_table

#These chunks are no longer needed
forceload remove all

#We're finished
execute as @a at @s run function tid:general/complete_sound
say Done!

#Move to nonexistent phase
scoreboard players set layer_3_handler_phase value 666

