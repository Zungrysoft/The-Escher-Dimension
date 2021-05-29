#Testing
#tellraw @a {"score":{"name":"*","objective":"fall_velocity"}}

#Small Stomp: Regular jump (374)
execute if score @s fall_velocity matches ..450 run function tid:gameplay/stomp_boots_stomp_1

#Medium Stomp: Jumping down from one block (515)
execute if score @s fall_velocity matches 451..650 run function tid:gameplay/stomp_boots_stomp_2

#Large Stomp: Jumping down from three blocks (715)
execute if score @s fall_velocity matches 651..950 run function tid:gameplay/stomp_boots_stomp_3

#Huge Stomp: Damaging fall (1025)
execute if score @s fall_velocity matches 951..1300 run function tid:gameplay/stomp_boots_stomp_4

#Mega Stomp: Near-fatal fall (1500)
execute if score @s fall_velocity matches 1301.. run function tid:gameplay/stomp_boots_stomp_5
