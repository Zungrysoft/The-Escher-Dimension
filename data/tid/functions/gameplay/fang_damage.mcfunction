#Track this entity's lifetime
scoreboard players add @s counter1 1

#If it's old enough, deal the damage
execute if score @s counter1 matches 8.. run function tid:gameplay/fang_damage_deal
