#Contracts

#Shredder Arrow
#Remove old trade
execute if entity @a[nbt={Inventory:[{id:"minecraft:paper",tag:{shredder_arrow:1}}]},distance=0..15] run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:paper",tag:{shredder_arrow:1}}}]
#Create new trade
execute if entity @a[nbt={Inventory:[{id:"minecraft:paper",tag:{shredder_arrow:1}}]},distance=0..15] unless data entity @s Offers.Recipes[{sell:{id:"minecraft:tipped_arrow",tag:{shredder_arrow:1}}}] run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,rewardExp:0b,buy:{id:arrow,Count:1},sell:{id:tipped_arrow,Count:1,tag:{CustomPotionColor:16711680,display:{Name:'[{"text":"Shredder Arrow","italic":false,"color":"white"}]',Lore:['[{"text":"Deals triple damage","italic":false,"color":"aqua"}]','[{"text":"Fizzles after a short distance","italic":false,"color":"red"}]']},Enchantments:[{id:"minecraft:unbreaking",lvl:1}],CustomPotionEffects:[{Id:27,Duration:1,Amplifier:1}],HideFlags:65535,shredder_arrow:1}}}

#Sniper Arrow
#Remove old trade
execute if entity @a[nbt={Inventory:[{id:"minecraft:paper",tag:{sniper_arrow:1}}]},distance=0..15] run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:paper",tag:{sniper_arrow:1}}}]
#Create new trade
execute if entity @a[nbt={Inventory:[{id:"minecraft:paper",tag:{sniper_arrow:1}}]},distance=0..15] unless data entity @s Offers.Recipes[{sell:{id:"minecraft:tipped_arrow",tag:{sniper_arrow:1}}}] run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,rewardExp:0b,buy:{id:arrow,Count:1},sell:{id:tipped_arrow,Count:1,tag:{CustomPotionColor:10542775,display:{Name:'[{"text":"Sniper Arrow","italic":false,"color":"white"}]',Lore:['[{"text":"Damage increases with range","italic":false,"color":"aqua"}]']},Enchantments:[{id:"minecraft:unbreaking",lvl:1}],CustomPotionEffects:[{Id:27,Duration:1,Amplifier:2}],HideFlags:65535,sniper_arrow:1}}}

#Zapper Arrow
#Create new trade
execute if entity @a[nbt={Inventory:[{id:"minecraft:paper",tag:{zapper_arrow:1}}]},distance=0..15] unless data entity @s Offers.Recipes[{sell:{id:"minecraft:tipped_arrow",tag:{zapper_arrow:1}}}] run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,rewardExp:0b,buy:{id:arrow,Count:1},sell:{id:tipped_arrow,Count:1,tag:{CustomPotionColor:16775214,display:{Name:'[{"text":"Electric Arrow","italic":false,"color":"white"}]',Lore:['[{"text":"Electrocutes nearby monsters","italic":false,"color":"aqua"}]','[{"text":"after a certain travel time","italic":false,"color":"aqua"}]']},Enchantments:[{id:"minecraft:unbreaking",lvl:1}],CustomPotionEffects:[{Id:27,Duration:1,Amplifier:3}],HideFlags:65535,zapper_arrow:1}}}

#Ballistic Arrow
#Create new trade
execute if entity @a[nbt={Inventory:[{id:"minecraft:paper",tag:{bounce_arrow:1}}]},distance=0..15] unless data entity @s Offers.Recipes[{sell:{id:"minecraft:tipped_arrow",tag:{bounce_arrow:1}}}] run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,rewardExp:0b,buy:{id:arrow,Count:1},sell:{id:tipped_arrow,Count:1,tag:{CustomPotionColor:1328383,display:{Name:'[{"text":"Ballistic Arrow","italic":false,"color":"blue"}]',Lore:['[{"text":"Bounces off walls and pierces","italic":false,"color":"aqua"}]','[{"text":"Damage increases on bounce","italic":false,"color":"aqua"}]']},Enchantments:[{id:"minecraft:unbreaking",lvl:1}],CustomPotionEffects:[{Id:27,Duration:1,Amplifier:13}],HideFlags:65535,bounce_arrow:1}}}
