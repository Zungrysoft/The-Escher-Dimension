#Check if this entity is on fire
execute store result score temp value run data get entity @s Fire
execute if score temp value matches 1.. run effect give @s minecraft:levitation 1 0
