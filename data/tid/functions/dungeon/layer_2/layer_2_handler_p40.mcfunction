#Message
say Adding final touches...

#Remove the cage
fill -5 55 -5 5 59 5 air replace bedrock

#Add the teleporter
summon minecraft:area_effect_cloud -6 55 -6 {Duration:99999999,CustomName:"\"teleporter\"",Color:11b,Tags:["starts_open"]}

#Add wall pattern to Fusion Central
execute positioned 0 42 40 run function tid:misc/neon_magma
execute positioned 0 42 27 run function tid:misc/neon_magma

#Add junk to Fusion Halls
execute as @e[type=area_effect_cloud,name="neon_junk_marker"] at @s if predicate tid:random_10 if block ~1 ~ ~ air if block ~-1 ~ ~ air if block ~ ~ ~1 air if block ~ ~ ~-1 air run function tid:dungeon/neon/select_junk
kill @e[type=area_effect_cloud,name="neon_junk_marker"]

#Generate pipes in Fusion Central
#execute as @e[type=area_effect_cloud,name="pipe_start"] at @s run function tid:misc/fusion_pipe_start
kill @e[type=area_effect_cloud,name="pipe_start"]

#Make all pre-generated alloy elementals persistent
execute as @e[type=zombie,tag=alloy_elemental] run data modify entity @s PersistenceRequired set value 1

#Add in the bonus chest
setblock 5 55 6 minecraft:chest[facing=north]{Items: [{Slot: 11b, id: "minecraft:iron_block", Count: 1b},{Slot: 13b, id: "minecraft:written_book", Count: 1b, tag: {smithing_tutorial:1b, pages: ['{"text":"Quick tip: You can put stone and leather equipment on a smithing table with an iron block to upgrade it to an iron tool. You can do the same with iron equipment and a diamond block.\\n\\nThis will come in handy if you want to upgrade a legendary item."}'], title: "Smithing Tutorial", author: "ZungryWare", resolved: 1b}},{Slot: 15b, id: "minecraft:potion", Count: 1b, tag: {Potion: "minecraft:luck"}}]}
setblock 6 55 6 minecraft:smithing_table

#Remove locators
kill @e[type=area_effect_cloud,name="neon_chest_locator"]
kill @e[type=area_effect_cloud,name="neon_spawner_locator"]

#These chunks are no longer needed
forceload remove all

#We're finished
execute as @a at @s run function tid:general/complete_sound
say Done!

#Move to nonexistent phase
scoreboard players set layer_2_handler_phase value 666