#Check if a Chambers entrance should generate instead of a decoration piece
#The check makes sure there are no other entrances nearby and ensures that there is enough space for the structure to generate
scoreboard players set @s counter1 0
execute unless entity @e[name="sin_chambers_entrance",distance=0..90] if blocks ~-2 ~-129 ~-2 ~2 ~-152 ~2 33 129 33 all run scoreboard players set @s counter1 1

#If conditions are met for a Chambers entrance, generate it. Otherwise, generate a normal piece of decoration
execute if score @s counter1 matches 1 run function tid:dungeon/sin/generate_chambers_entrance
execute unless score @s counter1 matches 1 run function tid:dungeon/sin/generate_deco_medium