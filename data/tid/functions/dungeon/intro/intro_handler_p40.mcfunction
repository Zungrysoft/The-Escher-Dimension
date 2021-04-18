#Remove the cage
fill -5 223 -5 5 227 5 air replace bedrock

#Add in the bonus chest
#setblock 6 193 6 chest[facing=north]{Items: [{Slot: 11b, id: "minecraft:written_book", Count: 1b, tag: {pages: ['{"text":"-Use at least easy difficulty\n-No commands or cheats\n-Survive in any way you can. Regular survival minecraft rules apply."}'], title: "Rules", author: "ZungryWare", resolved: 1b}},{Slot: 15b, id: "minecraft:potion", Count: 1b, tag: {Potion: "minecraft:healing"}}]}

#Add in the water stuff
#function tid:misc/water_stalag_scatter

#If somehow, no diorite room was generated, put some at the end of the dungeon that the player can use.
execute unless entity @e[type=area_effect_cloud,tag=diorite] positioned 0 10000 0 at @e[type=area_effect_cloud,name="intro_marker",sort=furthest,limit=1] run function tid:misc/intro_diorite
kill @e[type=area_effect_cloud,name="intro_marker"]

#These chunks are no longer needed
forceload remove all

say Done!

#Move to nonexistent phase
scoreboard players set intro_handler_phase value 666