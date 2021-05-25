#Update score so the player can't get it twice
scoreboard players set art_nature value 1

#Sound Effects
function tid:art/complete_sound

#Chest
setblock ~-1 ~ ~1 chest[facing=west]{Items: [{Slot: 0b, id: "minecraft:golden_carrot", Count: 2b}, {Slot: 1b, id: "minecraft:golden_carrot", Count: 2b}, {Slot: 7b, id: "minecraft:golden_carrot", Count: 2b}, {Slot: 8b, id: "minecraft:golden_carrot", Count: 2b}, {Slot: 9b, id: "minecraft:golden_carrot", Count: 2b}, {Slot: 10b, id: "minecraft:golden_carrot", Count: 2b}, {Slot: 12b, id: "minecraft:shulker_shell", Count: 1b}, {Slot: 13b, id: "minecraft:stone_sword", Count: 1b, tag: {act_mainhand_kill_mob: 1b, eff_refill_healing_9: 1b, Damage: 0, legendary: 1b, display: {Lore: ['[{"text":"Put an empty bottle in Slot 9 of","italic":false,"color":"aqua"}]', '[{"text":"your hotbar and it will be refilled","italic":false,"color":"aqua"}]', '[{"text":"with Potion of Healing on kill","italic":false,"color":"aqua"}]'], Name: '[{"text":"Weapon of the Swordmage","italic":false,"bold":true,"color":"dark_purple"}]'}}}, {Slot: 14b, id: "minecraft:shulker_shell", Count: 1b}, {Slot: 16b, id: "minecraft:golden_carrot", Count: 2b}, {Slot: 17b, id: "minecraft:golden_carrot", Count: 2b}, {Slot: 18b, id: "minecraft:grass", Count: 1b}, {Slot: 19b, id: "minecraft:fern", Count: 1b}, {Slot: 20b, id: "minecraft:grass", Count: 1b}, {Slot: 21b, id: "minecraft:fern", Count: 1b}, {Slot: 22b, id: "minecraft:grass", Count: 1b}, {Slot: 23b, id: "minecraft:fern", Count: 1b}, {Slot: 24b, id: "minecraft:grass", Count: 1b}, {Slot: 25b, id: "minecraft:fern", Count: 1b}, {Slot: 26b, id: "minecraft:grass", Count: 1b}]} destroy

#Remove the bedrock
fill ~-1 ~-1 ~-1 ~2 ~-1 ~2 stone replace bedrock
