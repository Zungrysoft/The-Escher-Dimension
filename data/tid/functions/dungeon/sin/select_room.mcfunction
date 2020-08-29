#Determine what district type we're in
execute store result score @s counter1 run data get entity @e[tag=sin_district,limit=1,sort=nearest] Color

#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/room_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_50 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/room_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~6 ~-124 ~6 minecraft:blue_wool

#Build Doors
execute if block ~3 ~1 ~-1 air unless block ~3 ~ ~-1 air run setblock ~3 ~1 ~ crimson_door[facing=north,half=lower]
execute if block ~3 ~1 ~-1 air unless block ~3 ~ ~-1 air run setblock ~3 ~2 ~ crimson_door[facing=north,half=upper]

execute if block ~3 ~1 ~7 air unless block ~3 ~ ~7 air run setblock ~3 ~1 ~6 crimson_door[facing=south,half=lower]
execute if block ~3 ~1 ~7 air unless block ~3 ~ ~7 air run setblock ~3 ~2 ~6 crimson_door[facing=south,half=upper]

execute if block ~-1 ~1 ~3 air unless block ~-1 ~ ~3 air run setblock ~ ~1 ~3 crimson_door[facing=west,half=lower]
execute if block ~-3 ~1 ~3 air unless block ~-1 ~ ~3 air run setblock ~ ~2 ~3 crimson_door[facing=west,half=upper]

execute if block ~7 ~1 ~3 air unless block ~7 ~ ~3 air run setblock ~6 ~1 ~3 crimson_door[facing=east,half=lower]
execute if block ~7 ~1 ~3 air unless block ~7 ~ ~3 air run setblock ~6 ~2 ~3 crimson_door[facing=east,half=upper]

#Merge rooms
execute if block ~3 ~4 ~-1 chiseled_polished_blackstone run fill ~1 ~1 ~ ~5 ~3 ~-1 air
execute if block ~-1 ~4 ~3 chiseled_polished_blackstone run fill ~ ~1 ~1 ~-1 ~3 ~5 air
execute if block ~3 ~4 ~7 chiseled_polished_blackstone run fill ~1 ~1 ~6 ~5 ~3 ~7 air
execute if block ~7 ~4 ~3 chiseled_polished_blackstone run fill ~6 ~1 ~1 ~7 ~3 ~5 air

#Set the color based on the district it's in
execute if score @s counter1 matches 0 run fill ~ ~ ~ ~6 ~5 ~6 white_concrete replace light_blue_concrete
execute if score @s counter1 matches 1 run fill ~ ~ ~ ~6 ~5 ~6 orange_concrete replace light_blue_concrete
execute if score @s counter1 matches 2 run fill ~ ~ ~ ~6 ~5 ~6 magenta_concrete replace light_blue_concrete
execute if score @s counter1 matches 4 run fill ~ ~ ~ ~6 ~5 ~6 yellow_concrete replace light_blue_concrete
execute if score @s counter1 matches 5 run fill ~ ~ ~ ~6 ~5 ~6 lime_concrete replace light_blue_concrete
execute if score @s counter1 matches 6 run fill ~ ~ ~ ~6 ~5 ~6 pink_concrete replace light_blue_concrete
execute if score @s counter1 matches 7 run fill ~ ~ ~ ~6 ~5 ~6 gray_concrete replace light_blue_concrete
execute if score @s counter1 matches 8 run fill ~ ~ ~ ~6 ~5 ~6 light_gray_concrete replace light_blue_concrete
execute if score @s counter1 matches 9 run fill ~ ~ ~ ~6 ~5 ~6 cyan_concrete replace light_blue_concrete
execute if score @s counter1 matches 10 run fill ~ ~ ~ ~6 ~5 ~6 purple_concrete replace light_blue_concrete
execute if score @s counter1 matches 11 run fill ~ ~ ~ ~6 ~5 ~6 blue_concrete replace light_blue_concrete
execute if score @s counter1 matches 12 run fill ~ ~ ~ ~6 ~5 ~6 brown_concrete replace light_blue_concrete
execute if score @s counter1 matches 13 run fill ~ ~ ~ ~6 ~5 ~6 green_concrete replace light_blue_concrete
execute if score @s counter1 matches 14 run fill ~ ~ ~ ~6 ~5 ~6 red_concrete replace light_blue_concrete
execute if score @s counter1 matches 15 run fill ~ ~ ~ ~6 ~5 ~6 black_concrete replace light_blue_concrete
execute if score @s counter1 matches 16 run fill ~ ~ ~ ~6 ~5 ~6 tnt replace light_blue_concrete

#Create the base
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~1 ~ ~ {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~2 ~ ~ {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~3 ~ ~ {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~4 ~ ~ {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~5 ~ ~ {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~6 ~ ~ {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}

summon minecraft:armor_stand ~ ~ ~1 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~1 ~ ~1 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~2 ~ ~1 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~3 ~ ~1 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~4 ~ ~1 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~5 ~ ~1 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~6 ~ ~1 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}

summon minecraft:armor_stand ~ ~ ~2 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~1 ~ ~2 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~2 ~ ~2 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~3 ~ ~2 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~4 ~ ~2 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~5 ~ ~2 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~6 ~ ~2 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}

summon minecraft:armor_stand ~ ~ ~3 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~1 ~ ~3 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~2 ~ ~3 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~3 ~ ~3 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~4 ~ ~3 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~5 ~ ~3 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~6 ~ ~3 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}

summon minecraft:armor_stand ~ ~ ~4 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~1 ~ ~4 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~2 ~ ~4 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~3 ~ ~4 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~4 ~ ~4 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~5 ~ ~4 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~6 ~ ~4 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}

summon minecraft:armor_stand ~ ~ ~5 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~1 ~ ~5 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~2 ~ ~5 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~3 ~ ~5 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~4 ~ ~5 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~5 ~ ~5 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~6 ~ ~5 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}

summon minecraft:armor_stand ~ ~ ~6 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~1 ~ ~6 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~2 ~ ~6 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~3 ~ ~6 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~4 ~ ~6 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~5 ~ ~6 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~6 ~ ~6 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}

#Count the room in the total
scoreboard players add @e[name="sin_roomcount",type=area_effect_cloud,limit=1] tries 1

#We're done here
kill @s

