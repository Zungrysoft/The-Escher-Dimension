#Remove the cage
fill -5 193 -5 5 197 5 air replace bedrock

#Add the teleporter
summon minecraft:area_effect_cloud -6 193 -6 {Duration:99999999,CustomName:"\"teleporter\"",Color:7b,Tags:["starts_open"]}

#Add in the bonus chest
#setblock 6 193 6 chest[facing=north]{Items: [{Slot: 11b, id: "minecraft:written_book", Count: 1b, tag: {pages: ['{"text":"Towers of fire and hate, twisting up and down, and back through themselves. Staircases to nowhere and doors hopefully to somewhere.\\n\\nIf there\'s anything to take away from this, it\'s to §lwatch your step! §0You have been warned."}'], title: "A Fair Warning", author: "ZungryWare", resolved: 1b}}, {Slot: 15b, id: "minecraft:potion", Count: 1b, tag: {Potion: "minecraft:water_breathing"}}]}

#Add in willows
scoreboard players set willow_count value 1600
function tid:misc/jungle_willow_scatter

#Add in the water stalagmites
function tid:misc/water_stalag_scatter

#Add in the underwater treasure
scoreboard players set underwater_treasure_count value 0
execute as @e[type=area_effect_cloud,name="underwater_treasure",sort=random] at @s run function tid:misc/underwater_treasure

#If somehow, no evokers were generated, put one in a random spot so the player can kill it for the advancement
execute unless entity @e[type=evoker] run function tid:misc/safety_evoker

#Kill the locators
kill @e[type=area_effect_cloud,name="jungle_towerbase"]

#These chunks are no longer needed
forceload remove -100 -100 100 100
forceload remove 1000 1000 1032 1032

say Done!

#Move to nonexistent phase
scoreboard players set jungle_handler_phase value 666