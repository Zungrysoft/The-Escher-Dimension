#Update score so the player can't get it twice
scoreboard players set art_neon value 1

#Sound Effects
function tid:art/complete_sound

#Chest
execute positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:birch_sign run setblock ~ ~ ~ air
setblock ~1 ~ ~-1 air destroy
setblock ~1 ~ ~-1 chest[facing=north]{Items: [{Slot: 0b, id: "minecraft:potion", Count: 1b, tag: {Potion: "minecraft:awkward"}}, {Slot: 1b, id: "minecraft:potion", Count: 1b, tag: {Potion: "minecraft:awkward"}}, {Slot: 2b, id: "minecraft:potion", Count: 1b, tag: {Potion: "minecraft:awkward"}}, {Slot: 3b, id: "minecraft:golden_apple", Count: 1b}, {Slot: 4b, id: "minecraft:golden_apple", Count: 1b}, {Slot: 5b, id: "minecraft:golden_apple", Count: 1b}, {Slot: 6b, id: "minecraft:potion", Count: 1b, tag: {Potion: "minecraft:awkward"}}, {Slot: 7b, id: "minecraft:potion", Count: 1b, tag: {Potion: "minecraft:awkward"}}, {Slot: 8b, id: "minecraft:potion", Count: 1b, tag: {Potion: "minecraft:awkward"}}, {Slot: 9b, id: "minecraft:magma_cream", Count: 1b}, {Slot: 10b, id: "minecraft:redstone", Count: 1b}, {Slot: 11b, id: "minecraft:blaze_powder", Count: 1b}, {Slot: 12b, id: "minecraft:golden_apple", Count: 1b}, {Slot: 13b, id: "minecraft:totem_of_undying", Count: 1b}, {Slot: 14b, id: "minecraft:golden_apple", Count: 1b}, {Slot: 15b, id: "minecraft:ghast_tear", Count: 1b}, {Slot: 16b, id: "minecraft:glowstone_dust", Count: 1b}, {Slot: 17b, id: "minecraft:glistering_melon_slice", Count: 1b}, {Slot: 18b, id: "minecraft:potion", Count: 1b, tag: {Potion: "minecraft:awkward"}}, {Slot: 19b, id: "minecraft:potion", Count: 1b, tag: {Potion: "minecraft:awkward"}}, {Slot: 20b, id: "minecraft:potion", Count: 1b, tag: {Potion: "minecraft:awkward"}}, {Slot: 21b, id: "minecraft:golden_apple", Count: 1b}, {Slot: 22b, id: "minecraft:golden_apple", Count: 1b}, {Slot: 23b, id: "minecraft:golden_apple", Count: 1b}, {Slot: 24b, id: "minecraft:potion", Count: 1b, tag: {Potion: "minecraft:awkward"}}, {Slot: 25b, id: "minecraft:potion", Count: 1b, tag: {Potion: "minecraft:awkward"}}, {Slot: 26b, id: "minecraft:potion", Count: 1b, tag: {Potion: "minecraft:awkward"}}]} destroy

#Remove the bedrock
fill ~-1 ~-1 ~-1 ~2 ~-1 ~2 stone replace bedrock
