#Players drop 7 xp per level. But without the normal cap of 100.

#Summon the seven orbs
summon minecraft:experience_orb ~ ~ ~ {Value:1,Tags:["new"]}
summon minecraft:experience_orb ~ ~ ~ {Value:1,Tags:["new"]}
summon minecraft:experience_orb ~ ~ ~ {Value:1,Tags:["new"]}
summon minecraft:experience_orb ~ ~ ~ {Value:1,Tags:["new"]}
summon minecraft:experience_orb ~ ~ ~ {Value:1,Tags:["new"]}
summon minecraft:experience_orb ~ ~ ~ {Value:1,Tags:["new"]}
summon minecraft:experience_orb ~ ~ ~ {Value:1,Tags:["new"]}

#Determine how many levels the player has
execute store result score temp value run xp query @s levels

#Just destroy the orbs if the player has no levels
execute if score temp value matches 0 run kill @e[type=minecraft:experience_orb,tag=new]

#Store that value into each orb
execute as @e[type=minecraft:experience_orb,tag=new] store result entity @s Value short 1 run scoreboard players get temp value

#Remove the new tag
tag @e[type=minecraft:experience_orb,tag=new] remove new

#Clear the player's xp
xp set @s 0 levels
xp set @s 0 points
