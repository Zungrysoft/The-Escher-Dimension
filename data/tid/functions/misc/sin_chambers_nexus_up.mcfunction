#Build the room
function tid:dungeon/sin/chambers/select_nexus

#Maybe change the settings value
execute if predicate tid:random_20 run scoreboard players set temp4 value 666

#Remove its floor
fill ~1 ~-1 ~1 ~9 ~1 ~9 air
