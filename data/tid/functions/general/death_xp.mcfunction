#Players drop 7 xp per level. But without the normal cap of 100.

#Determine how many levels the player has
execute store result score temp value run xp query @s levels

#Clear the player's xp
xp set @s 0 levels
xp set @s 0 points

#Regain the player's xp
scoreboard players remove temp value 1
function tid:general/death_xp_recurse
