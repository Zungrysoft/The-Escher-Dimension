#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/outside_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~2 ~-125 ~2 minecraft:blue_wool

#Open doorway
execute at @s run setblock ~ ~ ~ air
execute at @s run setblock ~ ~1 ~ air

#Count the room in the total
scoreboard players add @e[name="sin_roomcount",type=area_effect_cloud,limit=1] tries 1

summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~1 ~ ~ {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~2 ~ ~ {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}

summon minecraft:armor_stand ~ ~ ~1 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~1 ~ ~1 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~2 ~ ~1 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}

summon minecraft:armor_stand ~ ~ ~2 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~1 ~ ~2 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}
summon minecraft:armor_stand ~2 ~ ~2 {Invulnerable:1b,Invisible:1b,CustomName:"\"polished_blackstone_bricks_pillar\"",Tags:["builder"]}

#We're done here
kill @s

