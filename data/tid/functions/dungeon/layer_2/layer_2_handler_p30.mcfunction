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
execute if score sin_portals value matches ..0 run summon minecraft:area_effect_cloud -25 55 -25 {Duration:99999999,CustomName:"\"teleporter\"",Color:8b}

#Wicked teleporter copout
execute if score wicked_portals value matches ..0 run summon minecraft:area_effect_cloud -25 55 22 {Duration:99999999,CustomName:"\"teleporter\"",Color:15b}

#Art copouts teleporter copout
execute if score art_templates_nature value matches ..0 positioned 31 54 23 run function tid:misc/nature_copy_art
execute if score art_templates_sand2 value matches ..0 positioned 31 54 27 run function tid:misc/sand2_copy_art
execute if score art_templates_soulsand value matches ..0 positioned 27 54 31 run function tid:misc/soulsand_copy_art
execute if score art_templates_neon value matches ..0 positioned 23 54 31 run function tid:misc/neon_copy_art
