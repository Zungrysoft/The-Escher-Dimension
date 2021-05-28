#Remove the cage
fill -5 193 -5 5 197 5 air replace bedrock

#Add the teleporter
summon minecraft:area_effect_cloud -6 193 -6 {Duration:99999999,CustomName:"\"teleporter\"",Color:7b,Tags:["starts_open"]}

#Add in the bonus chest
#setblock 6 193 6 chest[facing=north]{Items: [{Slot: 11b, id: "minecraft:written_book", Count: 1b, tag: {pages: ['{"text":"Search high and low for treasure!"}','{"text":"§lEvoker Changes:§r\\n-Evoker now has 80 health. (40 hearts.)\\n-Vexes now have 6 health. (3 hearts.)\\n-Vexes die instantly if no Evokers are alive within 25 blocks."}'], title: "The Cultists' Refuge", author: "ZungryWare", resolved: 1b}},{Slot: 15b, id: "minecraft:potion", Count: 1b, tag: {Potion: "minecraft:water_breathing"}}]}
setblock 6 193 6 chest[facing=north]{Items: [{Slot: 11b, id: "minecraft:written_book", Count: 1b, tag: {pages: ['{"text":"The Illager Masonry Cult has built an outpost on these old ruins. It serves as a harbor for traveling cultists between raiding villages. The natural beasts above and below the waters will tear you up if you are not careful."}','{"text":"Tread lightly and avoid the towers unless you want to come face to face with the cult leaders."}'], title: "The Masonry Headquarters", author: "ZungryWare", resolved: 1b}},{Slot: 15b, id: "minecraft:potion", Count: 1b, tag: {Potion: "minecraft:water_breathing"}}]}

say Building Ruins...

#Add in willows
scoreboard players set willow_count value 1600
function tid:misc/jungle_willow_scatter

#Add in the water stalagmites
function tid:misc/water_stalag_scatter

#Add in the underwater treasure
scoreboard players set underwater_treasure_count value 0
execute as @e[type=area_effect_cloud,name="underwater_treasure",sort=random] at @s run function tid:misc/underwater_treasure
execute as @e[type=area_effect_cloud,name="underwater_ruin_treasure"] at @s run function tid:misc/water_ruin_chest

#If somehow, no evokers were generated, put one in a random spot so the player can kill it for the advancement
execute unless entity @e[type=evoker] run function tid:misc/safety_evoker

#Kill the locators
kill @e[type=area_effect_cloud,name="jungle_towerbase"]

#These chunks are no longer needed
forceload remove all

#We're finished
execute as @a at @s run function tid:general/complete_sound
say Done!

#Move to nonexistent phase
scoreboard players set jungle_handler_phase value 666