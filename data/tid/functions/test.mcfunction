#scoreboard players set @e[name="soulsand_roomcount"] tries 0
#setblock ~1 ~-1 ~-6 minecraft:structure_block{name: "tid:soulsand/entrance_east", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
#setblock ~1 ~0 ~-6 minecraft:redstone_block
#fill ~1 ~127 ~-6 ~28 ~143 ~6 minecraft:blue_wool



execute in tid:layer_infernal run kill @e[type=minecraft:area_effect_cloud,name="infernal_roomcount"]
execute in tid:layer_infernal run summon minecraft:area_effect_cloud 1 1 1 {Duration:99999999,CustomName:"\"infernal_roomcount\""}
execute in tid:layer_infernal run scoreboard players set @e[type=minecraft:area_effect_cloud,name="infernal_roomcount"] tries 0

execute in tid:layer_infernal run kill @e[type=minecraft:area_effect_cloud,name="infernal_handler"]
execute in tid:layer_infernal run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"infernal_handler\""}
execute in tid:layer_infernal run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"infernal_north\""}