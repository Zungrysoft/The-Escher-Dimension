#Repeat the function

#Contracts

#Shredder Arrow
#Grant trade
execute if data entity @s Offers.Recipes[{sell:{id:"minecraft:paper",tag:{shredder_arrow:1}}}] unless data entity @s Offers.Recipes[{uses:0,sell:{id:"minecraft:paper",tag:{shredder_arrow:1}}}] run data modify entity @s Offers.Recipes append value {maxUses:9999999,specialPrice:0,rewardExp:0b,buy:{id:arrow,Count:1},sell:{id:tipped_arrow,Count:3,tag:{CustomPotionColor:16711680,display:{Name:'[{"text":"Shredder Arrow","italic":false,"color":"white"}]',Lore:['[{"text":"Deals triple damage","italic":false,"color":"aqua"}]','[{"text":"Only travels a short distance","italic":false,"color":"red"}]']},Enchantments:[{}],CustomPotionEffects:[{Id:27,Duration:1,Amplifier:1}],HideFlags:65535,shredder_arrow:1}}}
#Remove old trade
execute if data entity @s Offers.Recipes[{sell:{id:"minecraft:paper",tag:{shredder_arrow:1}}}] unless data entity @s Offers.Recipes[{uses:0,sell:{id:"minecraft:paper",tag:{shredder_arrow:1}}}] run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:paper",tag:{shredder_arrow:1}}}]
