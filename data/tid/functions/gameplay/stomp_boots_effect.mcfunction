#Testing
#tellraw @s {"score":{"name":"*","objective":"fall_distance"}}

#Small Stomp: Regular jump
execute if score @s fall_distance matches ..149 run function tid:gameplay/stomp_boots_stomp_1

#Medium Stomp: Jumping down from one block
execute if score @s fall_distance matches 150..349 run function tid:gameplay/stomp_boots_stomp_2

#Large Stomp: Jumping down from three blocks (715)
execute if score @s fall_distance matches 350..649 run function tid:gameplay/stomp_boots_stomp_3

#Huge Stomp: Damaging fall (1025)
execute if score @s fall_distance matches 650..1349 run function tid:gameplay/stomp_boots_stomp_4

#Mega Stomp: Near-fatal fall (1500)
execute if score @s fall_distance matches 1350.. run function tid:gameplay/stomp_boots_stomp_5
