say Adding Final Touches...

#Add in the bonus chest
#setblock 6 193 6 chest[facing=north]{Items: [{Slot: 11b, id: "minecraft:written_book", Count: 1b, tag: {pages: ['{"text":"-Use at least easy difficulty\n-No commands or cheats\n-Survive in any way you can. Regular survival minecraft rules apply."}'], title: "Rules", author: "ZungryWare", resolved: 1b}},{Slot: 15b, id: "minecraft:potion", Count: 1b, tag: {Potion: "minecraft:healing"}}]}

#Add in the water stuff
#function tid:misc/water_stalag_scatter

#If somehow, no diorite room was generated, put some at the end of the dungeon that the player can use.
summon minecraft:area_effect_cloud 0 223 -10 {Duration:99999999,CustomName:"\"intro_marker\""}
execute unless entity @e[type=area_effect_cloud,tag=diorite] positioned 0 10000 0 at @e[type=area_effect_cloud,name="intro_marker",sort=furthest,limit=1] run function tid:misc/intro_diorite
kill @e[type=area_effect_cloud,name="intro_marker"]

#Build the underwater
execute positioned -50 149 -50 run function tid:dungeon/intro/terrain/run_terrain

#Build the underground area's terrain
function tid:dungeon/wicked/terrain_x

#Add walls to the underground area
function tid:dungeon/wicked/build_walls

#Add features to the underground area
function tid:dungeon/wicked/features

#Kill any items laying on the floor
kill @e[type=item]

#Remove the cage
fill -5 223 -5 5 227 5 air replace bedrock

#These chunks are no longer needed
forceload remove all

#We're finished
execute as @a at @s run function tid:general/complete_sound
say Done!

#Move to nonexistent phase
scoreboard players set intro_handler_phase value 666