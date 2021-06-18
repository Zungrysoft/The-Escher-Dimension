#Update score so the player can't get it twice
scoreboard players set art_nature value 1

#Sound Effects
function tid:art/complete_sound

#Chest
setblock ~-1 ~ ~1 chest[facing=west]{Items: [{Slot: 0b, id: "minecraft:golden_carrot", Count: 2b}, {Slot: 1b, id: "minecraft:golden_carrot", Count: 2b}, {Slot: 7b, id: "minecraft:golden_carrot", Count: 2b}, {Slot: 8b, id: "minecraft:golden_carrot", Count: 2b}, {Slot: 9b, id: "minecraft:golden_carrot", Count: 2b}, {Slot: 10b, id: "minecraft:golden_carrot", Count: 2b}, {Slot: 12b, id: "minecraft:shulker_shell", Count: 1b}, {Slot: 13b, id: "minecraft:stone_axe", Count: 1b, tag: {legendary:1b, eff_fireworks_reload: 1b, act_mainhand_kill_mob: 1b, Damage: 0, display: {Lore: ['[{"text":"Put a crossbow in Slot 2 of","italic":false,"color":"aqua"}]', '[{"text":"your hotbar. On kill, that","italic":false,"color":"aqua"}]', '[{"text":"crossbow will be reloaded with","italic":false,"color":"aqua"}]', '[{"text":"fireworks from your inventory.","italic":false,"color":"aqua"}]'], Name: '[{"text":"Hilt Missile","italic":false,"bold":true,"color":"dark_aqua"}]'}}}, {Slot: 14b, id: "minecraft:shulker_shell", Count: 1b}, {Slot: 16b, id: "minecraft:golden_carrot", Count: 2b}, {Slot: 17b, id: "minecraft:golden_carrot", Count: 2b}, {Slot: 18b, id: "minecraft:grass", Count: 1b}, {Slot: 19b, id: "minecraft:fern", Count: 1b}, {Slot: 20b, id: "minecraft:grass", Count: 1b}, {Slot: 21b, id: "minecraft:fern", Count: 1b}, {Slot: 22b, id: "minecraft:grass", Count: 1b}, {Slot: 23b, id: "minecraft:fern", Count: 1b}, {Slot: 24b, id: "minecraft:grass", Count: 1b}, {Slot: 25b, id: "minecraft:fern", Count: 1b}, {Slot: 26b, id: "minecraft:grass", Count: 1b}]} destroy

#Remove the bedrock
fill ~-1 ~-1 ~-1 ~2 ~-1 ~2 stone replace bedrock
