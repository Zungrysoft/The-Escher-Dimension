#Track this entity's lifetime
scoreboard players add @s counter1 1

#If it's old enough, deal the damage
execute if score @s counter1 matches 8.. if entity @s[tag=single] run function tid:gameplay/fang_damage_deal_single
execute if score @s counter1 matches 8.. if entity @s[tag=circle] run function tid:gameplay/fang_damage_deal_circle
