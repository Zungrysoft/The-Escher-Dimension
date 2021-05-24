scoreboard players set layer_2_handler_phase value 40

#If there is still a significant number of rooms left to generate, add copout chests

#Neon copout
execute if score neon_rooms value matches 13.. run setblock 0 56 31 chest[facing=north]{LootTable: "tid:chests/neon_copout"}

#Soulsand copout
execute if score soulsand_arenas_built value matches ..7 run setblock 39 55 0 chest[facing=west]{LootTable: "tid:chests/soulsand_copout"}

#Nature copout
execute if score nature_rooms value matches 90.. run setblock -34 55 0 chest[facing=east]{LootTable: "tid:chests/nature_copout"}

#Sand2 copout
execute if score sand2_rooms value matches 70.. run setblock 0 36 -48 chest[facing=south]{LootTable: "tid:chests/sand2_copout"}

#Sin teleporter copout
execute if score sin_portals value matches ..0 run summon minecraft:area_effect_cloud 22 55 22 {Duration:99999999,CustomName:"\"teleporter\"",Color:8b}
