#This function copies fireworks from the player's inventory into data
#First, determine which slot to grab from
scoreboard players set slot value -1
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value -106
execute if data entity @s Inventory[{Slot:35b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 35
execute if data entity @s Inventory[{Slot:34b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 34
execute if data entity @s Inventory[{Slot:33b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 33
execute if data entity @s Inventory[{Slot:32b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 32
execute if data entity @s Inventory[{Slot:31b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 31
execute if data entity @s Inventory[{Slot:30b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 30
execute if data entity @s Inventory[{Slot:29b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 29
execute if data entity @s Inventory[{Slot:28b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 28
execute if data entity @s Inventory[{Slot:27b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 27
execute if data entity @s Inventory[{Slot:26b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 26
execute if data entity @s Inventory[{Slot:25b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 25
execute if data entity @s Inventory[{Slot:24b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 24
execute if data entity @s Inventory[{Slot:23b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 23
execute if data entity @s Inventory[{Slot:22b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 22
execute if data entity @s Inventory[{Slot:21b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 21
execute if data entity @s Inventory[{Slot:20b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 20
execute if data entity @s Inventory[{Slot:19b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 19
execute if data entity @s Inventory[{Slot:18b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 18
execute if data entity @s Inventory[{Slot:17b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 17
execute if data entity @s Inventory[{Slot:16b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 16
execute if data entity @s Inventory[{Slot:15b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 15
execute if data entity @s Inventory[{Slot:14b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 14
execute if data entity @s Inventory[{Slot:13b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 13
execute if data entity @s Inventory[{Slot:12b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 12
execute if data entity @s Inventory[{Slot:11b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 11
execute if data entity @s Inventory[{Slot:10b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 10
execute if data entity @s Inventory[{Slot:9b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 9
execute if data entity @s Inventory[{Slot:8b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 8
execute if data entity @s Inventory[{Slot:7b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 7
execute if data entity @s Inventory[{Slot:6b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 6
execute if data entity @s Inventory[{Slot:5b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 5
execute if data entity @s Inventory[{Slot:4b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 4
execute if data entity @s Inventory[{Slot:3b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 3
execute if data entity @s Inventory[{Slot:2b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 2
execute if data entity @s Inventory[{Slot:1b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 1
execute if data entity @s Inventory[{Slot:0b,id:"minecraft:firework_rocket"}] run scoreboard players set slot value 0

#Now copy the item
execute if score slot value matches 0 run data modify storage rockethold Items append from entity @s Inventory[{Slot:0b}]
execute if score slot value matches 1 run data modify storage rockethold Items append from entity @s Inventory[{Slot:1b}]
execute if score slot value matches 2 run data modify storage rockethold Items append from entity @s Inventory[{Slot:2b}]
execute if score slot value matches 3 run data modify storage rockethold Items append from entity @s Inventory[{Slot:3b}]
execute if score slot value matches 4 run data modify storage rockethold Items append from entity @s Inventory[{Slot:4b}]
execute if score slot value matches 5 run data modify storage rockethold Items append from entity @s Inventory[{Slot:5b}]
execute if score slot value matches 6 run data modify storage rockethold Items append from entity @s Inventory[{Slot:6b}]
execute if score slot value matches 7 run data modify storage rockethold Items append from entity @s Inventory[{Slot:7b}]
execute if score slot value matches 8 run data modify storage rockethold Items append from entity @s Inventory[{Slot:8b}]
execute if score slot value matches 9 run data modify storage rockethold Items append from entity @s Inventory[{Slot:9b}]
execute if score slot value matches 10 run data modify storage rockethold Items append from entity @s Inventory[{Slot:10b}]
execute if score slot value matches 11 run data modify storage rockethold Items append from entity @s Inventory[{Slot:11b}]
execute if score slot value matches 12 run data modify storage rockethold Items append from entity @s Inventory[{Slot:12b}]
execute if score slot value matches 13 run data modify storage rockethold Items append from entity @s Inventory[{Slot:13b}]
execute if score slot value matches 14 run data modify storage rockethold Items append from entity @s Inventory[{Slot:14b}]
execute if score slot value matches 15 run data modify storage rockethold Items append from entity @s Inventory[{Slot:15b}]
execute if score slot value matches 16 run data modify storage rockethold Items append from entity @s Inventory[{Slot:16b}]
execute if score slot value matches 17 run data modify storage rockethold Items append from entity @s Inventory[{Slot:17b}]
execute if score slot value matches 18 run data modify storage rockethold Items append from entity @s Inventory[{Slot:18b}]
execute if score slot value matches 19 run data modify storage rockethold Items append from entity @s Inventory[{Slot:19b}]
execute if score slot value matches 20 run data modify storage rockethold Items append from entity @s Inventory[{Slot:20b}]
execute if score slot value matches 21 run data modify storage rockethold Items append from entity @s Inventory[{Slot:21b}]
execute if score slot value matches 22 run data modify storage rockethold Items append from entity @s Inventory[{Slot:22b}]
execute if score slot value matches 23 run data modify storage rockethold Items append from entity @s Inventory[{Slot:23b}]
execute if score slot value matches 24 run data modify storage rockethold Items append from entity @s Inventory[{Slot:24b}]
execute if score slot value matches 25 run data modify storage rockethold Items append from entity @s Inventory[{Slot:25b}]
execute if score slot value matches 26 run data modify storage rockethold Items append from entity @s Inventory[{Slot:26b}]
execute if score slot value matches 27 run data modify storage rockethold Items append from entity @s Inventory[{Slot:27b}]
execute if score slot value matches 28 run data modify storage rockethold Items append from entity @s Inventory[{Slot:28b}]
execute if score slot value matches 29 run data modify storage rockethold Items append from entity @s Inventory[{Slot:29b}]
execute if score slot value matches 30 run data modify storage rockethold Items append from entity @s Inventory[{Slot:30b}]
execute if score slot value matches 31 run data modify storage rockethold Items append from entity @s Inventory[{Slot:31b}]
execute if score slot value matches 32 run data modify storage rockethold Items append from entity @s Inventory[{Slot:32b}]
execute if score slot value matches 33 run data modify storage rockethold Items append from entity @s Inventory[{Slot:33b}]
execute if score slot value matches 34 run data modify storage rockethold Items append from entity @s Inventory[{Slot:34b}]
execute if score slot value matches 35 run data modify storage rockethold Items append from entity @s Inventory[{Slot:35b}]
execute if score slot value matches -106 run data modify storage rockethold Items append from entity @s Inventory[{Slot:-106b}]

#Finally, clear one of the item
clear @s minecraft:firework_rocket 1
