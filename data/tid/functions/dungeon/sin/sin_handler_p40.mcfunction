#Remove the cage
fill -5 183 -5 5 187 5 air replace bedrock

#Add the teleporter
summon minecraft:area_effect_cloud -6 183 -6 {Duration:99999999,CustomName:"\"teleporter\"",Color:7b,Tags:["starts_open"]}

#Add in the bonus chest
setblock 6 183 6 chest[facing=west]{Items: [{Slot: 11b, id: "minecraft:written_book", Count: 1b, tag: {pages: ['{"text":"[TEMPORARY TEXT]"}'], title: "A Piglin Port Town", author: "ZungryWare", resolved: 1b}},{Slot: 15b, id: "minecraft:enchanted_golden_apple", Count: 1b}]}

#These chunks are no longer needed
forceload remove -100 -100 100 100
forceload remove 1000 1000 1064 1064

say Done!

#Move to nonexistent phase
scoreboard players set sin_handler_phase value 666
