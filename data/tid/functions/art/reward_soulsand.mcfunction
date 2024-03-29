#Update score so the player can't get it twice
scoreboard players set art_soulsand value 1

#Sound Effects
function tid:art/complete_sound

#Chest
execute positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:birch_sign run setblock ~ ~ ~ air
setblock ~1 ~ ~-1 air destroy
setblock ~1 ~ ~-1 chest[facing=north]{Items: [{Slot: 0b, id: "minecraft:soul_soil", Count: 1b}, {Slot: 1b, id: "minecraft:experience_bottle", Count: 1b}, {Slot: 2b, id: "minecraft:soul_soil", Count: 1b}, {Slot: 4b, id: "minecraft:diamond", Count: 1b}, {Slot: 6b, id: "minecraft:soul_soil", Count: 1b}, {Slot: 7b, id: "minecraft:experience_bottle", Count: 1b}, {Slot: 8b, id: "minecraft:soul_soil", Count: 1b}, {Slot: 9b, id: "minecraft:soul_soil", Count: 1b}, {Slot: 10b, id: "minecraft:experience_bottle", Count: 1b}, {Slot: 11b, id: "minecraft:soul_soil", Count: 1b}, {Slot: 12b, id: "minecraft:diamond", Count: 1b}, {Slot: 13b, id: "minecraft:fishing_rod", Count: 1b, tag: {Damage: 0, hook_type: 2, AttributeModifiers: [{Amount: 6, Slot: "mainhand", AttributeName: "generic.attack_damage", Operation: 0, UUID: [I; -121316, 30606, 618, -61212], Name: "generic.attack_damage"}, {Amount: -3, Slot: "mainhand", AttributeName: "generic.attack_speed", Operation: 0, UUID: [I; -121316, 30706, 618, -61412], Name: "generic.attack_speed"}], display: {Lore: ['[{"text":"Effect: Deals 6 damage to all","italic":false,"color":"aqua"}]', '[{"text":"nearby monsters, slows them,","italic":false,"color":"aqua"}]', '[{"text":"and launches them into the air.","italic":false,"color":"aqua"}]'], Name: '[{"text":"Hurricane Hook","italic":false,"bold":true,"color":"blue"}]'}, Enchantments: [{lvl: 1, id: "minecraft:mending"}]}}, {Slot: 14b, id: "minecraft:diamond", Count: 1b}, {Slot: 15b, id: "minecraft:soul_soil", Count: 1b}, {Slot: 16b, id: "minecraft:experience_bottle", Count: 1b}, {Slot: 17b, id: "minecraft:soul_soil", Count: 1b}, {Slot: 18b, id: "minecraft:soul_soil", Count: 1b}, {Slot: 19b, id: "minecraft:experience_bottle", Count: 1b}, {Slot: 20b, id: "minecraft:soul_soil", Count: 1b}, {Slot: 22b, id: "minecraft:diamond", Count: 1b}, {Slot: 24b, id: "minecraft:soul_soil", Count: 1b}, {Slot: 25b, id: "minecraft:experience_bottle", Count: 1b}, {Slot: 26b, id: "minecraft:soul_soil", Count: 1b}]} destroy

#Remove the bedrock
fill ~-1 ~-1 ~-1 ~2 ~-1 ~2 stone replace bedrock
