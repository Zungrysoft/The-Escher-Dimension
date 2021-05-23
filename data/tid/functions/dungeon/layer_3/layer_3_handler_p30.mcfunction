scoreboard players set layer_3_handler_phase value 40

#If there is still a significant number of rooms left to generate, generate a straggler and go back to phase 20
scoreboard players add retry_attempts value 1
execute if score station_rooms value matches 50.. if score retry_attempts value matches ..5 at @e[type=area_effect_cloud,name="station_straggler_start",sort=random,limit=3] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"station_north\""}
execute if score station_rooms value matches 50.. if score retry_attempts value matches ..5 run scoreboard players set layer_3_handler_phase value 20

#Station copout
execute if score station_rooms value matches 250.. unless score retry_attempts value matches ..5 run setblock 0 55 -31 chest[facing=south]{LootTable: "tid:chests/station_copout"}

#Moon copout
execute if score moon_rooms value matches 400.. run setblock 35 55 18 chest[facing=west]{LootTable: "tid:chests/moon_copout"}

#Moon copout
execute if score mutant_rooms value matches 90.. run setblock -26 55 18 chest[facing=east]{LootTable: "tid:chests/mutant_copout"}
