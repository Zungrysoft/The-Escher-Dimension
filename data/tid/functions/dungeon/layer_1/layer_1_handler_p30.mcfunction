scoreboard players set layer_1_handler_phase value 40

#If there is still a significant number of rooms left to generate, add copout chests

#Stronghold2 copout
execute if score stronghold2_rooms value matches 200.. run setblock 0 59 -50 chest[facing=south]{LootTable: "tid:chests/stronghold2_copout"}

#Brick copout
execute if score brick_rooms value matches 150.. run setblock -23 59 -43 chest[facing=east]{LootTable: "tid:chests/brick_copout"}

#Ice copout
execute if score ice_rooms value matches 120.. run setblock 36 59 -42 chest[facing=west]{LootTable: "tid:chests/ice_copout"}
