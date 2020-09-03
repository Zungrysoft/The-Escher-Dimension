#Remove command block
fill ~ ~ ~ ~ ~1 ~ air

#Place the bonemeal dispensers
execute positioned ~ ~ ~-3 run setblock ~ ~ ~1 dispenser[facing=north]{Items: [{Slot: 4b, id: "minecraft:bone_meal", Count: 1b}]}
execute positioned ~ ~ ~-3 run setblock ~ ~ ~-1 dispenser[facing=south]{Items: [{Slot: 4b, id: "minecraft:bone_meal", Count: 1b}]}
execute positioned ~ ~ ~-3 run setblock ~1 ~ ~ dispenser[facing=west]{Items: [{Slot: 4b, id: "minecraft:bone_meal", Count: 1b}]}
execute positioned ~ ~ ~-3 run setblock ~-1 ~ ~ dispenser[facing=east]{Items: [{Slot: 4b, id: "minecraft:bone_meal", Count: 1b}]}

#Activate the dispensers
execute positioned ~ ~ ~-3 run setblock ~1 ~ ~1 redstone_block
execute positioned ~ ~ ~-3 run setblock ~-1 ~ ~-1 redstone_block

#Remove everything again
execute positioned ~ ~ ~-3 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"nature_grow_tree_remove\""}
schedule function tid:misc/nature_grow_tree_remove 5t replace