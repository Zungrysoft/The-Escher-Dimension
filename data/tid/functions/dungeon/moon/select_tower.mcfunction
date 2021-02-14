#Determine modulus of y position
execute store result score temp value run data get entity @s Pos[1] 1
scoreboard players set calc value 5
scoreboard players operation temp value %= calc value

#Pick a structure from this list based on y position
setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/tower_1", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score temp value matches 0 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/tower_2", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#If we're far enough from a towerbase, guarantee that a tower exit will generate
execute unless entity @e[type=area_effect_cloud,name="moon_towerbase_marker",distance=0..20] run function tid:dungeon/moon/select_tower_exit

#Activate whichever structure block was picked
setblock ~1 ~1 ~1 minecraft:redstone_block

#Summon marker so they don't generate too close together
summon minecraft:area_effect_cloud ~ ~6 ~ {Duration:99999999,CustomName:"\"moon_bridge_up\""}

#Mark this area as generated
fill ~ ~128 ~ ~7 ~133 ~7 minecraft:blue_wool

#Fill moon stone around the edge
fill ~-1 ~-1 ~-1 ~8 ~6 ~8 end_stone replace stone

#Count the room in the total
scoreboard players remove moon_rooms value 1

#We're done here
kill @s
