#Remove the cage
fill -5 183 -5 5 187 5 air replace bedrock

#Add the teleporter
summon minecraft:area_effect_cloud -6 183 -6 {Duration:99999999,CustomName:"\"teleporter\"",Color:7b,Tags:["starts_open"]}

#Add in the bonus chest
#setblock 6 183 6 chest[facing=north]{Items: [{Slot: 11b, id: "minecraft:written_book", Count: 1b, tag: {pages: ['{"text":"Towers of fire and hate, twisting up and down, and back through themselves. Staircases to nowhere and doors hopefully to somewhere.\\n\\nIf there\'s anything to take away from this, it\'s to §lwatch your step! §0You have been warned."}'], title: "A Fair Warning", author: "ZungryWare", resolved: 1b}}, {Slot: 15b, id: "minecraft:potion", Count: 1b, tag: {Potion: "minecraft:water_breathing"}}]}

#Randomize blocks
scoreboard players set xcount value 0
execute positioned 1 179 1 run function tid:dungeon/jungle/rng/nw_x
scoreboard players set xcount value 0
execute positioned 1 179 1 run function tid:dungeon/jungle/rng/sw_x
scoreboard players set xcount value 0
execute positioned 1 179 1 run function tid:dungeon/jungle/rng/ne_x
scoreboard players set xcount value 0
execute positioned 1 179 1 run function tid:dungeon/jungle/rng/se_x

#These chunks are no longer needed
forceload remove -100 -100 100 100
forceload remove 1000 1000 1032 1032

say Done!

#Move to nonexistent phase
scoreboard players set jungle_handler_phase value 666