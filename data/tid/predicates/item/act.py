import os

list = ["kill_mob","kill_creeper","kill_blaze","kill_skeleton","kill_piglin","deal_damage","block_damage","mine_spawner","cycle_long","cycle_short"]
slots = ["feet","legs","chest","head","offhand","mainhand"]


str1 =  "{\n\t\"condition\":\"minecraft:alternative\",\n\t\"terms\":[\n\t\t{\n\t\t\t\"condition\":\"minecraft:entity_properties\",\n\t\t\t\"entity\":\"this\",\n\t\t\t\"predicate\":{\n\t\t\t\t\"equipment\":{\n\t\t\t\t\t\""

str2 = "\":{\n\t\t\t\t\t\t\"nbt\":\"{act_"

#str2 = ":1b}\"\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t}\n\t\t},\n\t\t{\n\t\t\t\"condition\":\"minecraft:entity_properties\",\n\t\t\t\"entity\":\"this\",\n\t\t\t\"predicate\":{\n\t\t\t\t\"equipment\":{\n\t\t\t\t\t\"mainhand\":{\n\t\t\t\t\t\t\"nbt\":\"{act_"

str3 = ":1b}\"\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t}\n\t\t}\n\t]\n}\n"


for i in list:
	for j in slots:
		s = f"{str1}{j}{str2}{j}_{i}{str3}"
		f = open(f"act_{j}_{i}.json","w+")
		f.write(s)
		f.close()
		


