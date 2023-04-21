#Update score so the player can't get it twice
scoreboard players set art_sand2 value 1

#Sound Effects
function tid:art/complete_sound

#Chest
execute positioned ~-1 ~ ~1 if block ~ ~ ~ minecraft:birch_sign run setblock ~ ~ ~ air
setblock ~-1 ~ ~1 air destroy
setblock ~-1 ~ ~1 chest[facing=west]{Items: [{Slot: 0b, id: "minecraft:sand", Count: 1b}, {Slot: 1b, id: "minecraft:sand", Count: 1b}, {Slot: 2b, id: "minecraft:sand", Count: 1b}, {Slot: 3b, id: "minecraft:sand", Count: 1b}, {Slot: 4b, id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 1s, id: "minecraft:mending"}]}}, {Slot: 5b, id: "minecraft:sand", Count: 1b}, {Slot: 6b, id: "minecraft:sand", Count: 1b}, {Slot: 7b, id: "minecraft:sand", Count: 1b}, {Slot: 8b, id: "minecraft:sand", Count: 1b}, {Slot: 9b, id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 1s, id: "minecraft:quick_charge"}]}}, {Slot: 10b, id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 2s, id: "minecraft:power"}]}}, {Slot: 11b, id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 2s, id: "minecraft:efficiency"}]}}, {Slot: 12b, id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 2s, id: "minecraft:sharpness"}]}}, {Slot: 13b, id: "minecraft:anvil", Count: 1b}, {Slot: 14b, id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 2s, id: "minecraft:sharpness"}]}}, {Slot: 15b, id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 2s, id: "minecraft:efficiency"}]}}, {Slot: 16b, id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 2s, id: "minecraft:power"}]}}, {Slot: 17b, id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 1s, id: "minecraft:quick_charge"}]}}, {Slot: 18b, id: "minecraft:sand", Count: 1b}, {Slot: 19b, id: "minecraft:sand", Count: 1b}, {Slot: 20b, id: "minecraft:sand", Count: 1b}, {Slot: 21b, id: "minecraft:sand", Count: 1b}, {Slot: 22b, id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 1s, id: "minecraft:mending"}]}}, {Slot: 23b, id: "minecraft:sand", Count: 1b}, {Slot: 24b, id: "minecraft:sand", Count: 1b}, {Slot: 25b, id: "minecraft:sand", Count: 1b}, {Slot: 26b, id: "minecraft:sand", Count: 1b}]} destroy

#Remove the bedrock
fill ~-1 ~-1 ~-1 ~2 ~-1 ~2 stone replace bedrock
