import loottweaker.LootTweaker;

var loot_array  as string[] = [
    "minecraft:chests/abandoned_mineshaft",
    "minecraft:chests/desert_pyramid",
    "minecraft:chests/end_city_treasure",
    "minecraft:chests/igloo_chest",
    "minecraft:chests/jungle_temple",
    "minecraft:chests/jungle_temple_dispenser",
    "minecraft:chests/nether_bridge",
    "minecraft:chests/simple_dungeon",
    "minecraft:chests/spawn_bonus_chest",
    "minecraft:chests/stronghold_corridor",
    "minecraft:chests/stronghold_crossing",
    "minecraft:chests/stronghold_library",
    "minecraft:chests/village_blacksmith",
    "minecraft:chests/woodland_mansion",
];

for i, table in loot_array {
    val t = LootTweaker.getTable(table);
    val m = t.getPool("main");
    m.addItemEntry(<contenttweaker:emc_coin_10000>, 5);
}   