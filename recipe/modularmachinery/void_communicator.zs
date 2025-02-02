#reloadable
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder; 


val coin_10000 = <contenttweaker:emc_coin_10000>;

val base_coin = 8;

RecipeBuilder.newBuilder("iron_book", "void_communicator", 600)
    .addItemInputs([
        <minecraft:book> * 1,
        <ore:ingotIron> * 16,
        coin_10000 * base_coin,
    ])
    .addItemOutput(<contenttweaker:iron_book> * 1)
    .build();

RecipeBuilder.newBuilder("redstone_book", "void_communicator", 600)
    .addItemInputs([
        <minecraft:book> * 1,
        <ore:dustRedstone> * 16,
        coin_10000 * base_coin,
    ])
    .addItemOutput(<contenttweaker:redstone_book> * 1)
    .build();

RecipeBuilder.newBuilder("template_folder", "void_communicator", 600)
    .addItemInputs([
        <minecraft:book> * 1,
        <ore:gemLapis> * 16,
        coin_10000 * 32,
    ])
    .addItemOutput(<hbm:template_folder> * 1)
    .build();

RecipeBuilder.newBuilder("template_folder2", "void_communicator", 600)
    .addItemInputs([
        <minecraft:book> * 1,
        <hbm:cap_nuka> * 256,
        <ore:gemLapis> * 16,
    ])
    .addItemOutput(<hbm:template_folder> * 1)
    .build();

RecipeBuilder.newBuilder("circuit_template_1", "void_communicator", 600)
    .addItemInputs([
        <ore:blockIron> * 1,
        <ore:crystalCertusQuartz> * 16,
        coin_10000 * base_coin,
    ])
    .addItemOutput(<appliedenergistics2:material:13> * 1)
    .build();

RecipeBuilder.newBuilder("circuit_template_2", "void_communicator", 600)
    .addItemInputs([
        <ore:blockIron> * 1,
        <ore:gemDiamond> * 16,
        coin_10000 * base_coin,
    ])
    .addItemOutput(<appliedenergistics2:material:14> * 1)
    .build();

RecipeBuilder.newBuilder("circuit_template_3", "void_communicator", 600)
    .addItemInputs([
        <ore:blockIron> * 1,
        <ore:ingotGold> * 16,
        coin_10000 * base_coin,
    ])
    .addItemOutput(<appliedenergistics2:material:15> * 1)
    .build();

RecipeBuilder.newBuilder("circuit_template_4", "void_communicator", 600)
    .addItemInputs([
        <ore:blockIron> * 1,
        <ore:itemSilicon> * 16,
        coin_10000 * base_coin,
    ])
    .addItemOutput(<appliedenergistics2:material:19> * 1)
    .build();

RecipeBuilder.newBuilder("alchemy_book", "void_communicator", 600)
    .addItemInputs([
        <twilightforest:twilight_scepter>,
        <twilightforest:lifedrain_scepter>,
        <twilightforest:zombie_scepter>,
        <twilightforest:shield_scepter>,
        <ore:ingotDuraSteel> * 16 ,
        <twilightforest:naga_scale> *32 ,
        <minecraft:book>*1,
    ])
    .addItemOutput(<contenttweaker:alchemy_book>* 1)
    .build();


RecipeBuilder.newBuilder("hbm:bobmazon_materials", "void_communicator", 600).addItemInputs([
    <minecraft:book>*1,
    <hbm:cap_nuka>* 64,
    <ore:ingotSteel>
]).addItemOutput(<hbm:bobmazon_materials>* 1).build();


RecipeBuilder.newBuilder("touhou_little_maid:hakurei_gohei", "void_communicator", 600).addItemInputs([
    coin_10000 * 32,
    <minecraft:paper>*2,
    <minecraft:stick>*2
]).addItemOutput(<touhou_little_maid:hakurei_gohei>* 1).build();


// magic_map
val magic_map = <twilightforest:magic_map_empty>;

RecipeBuilder.newBuilder("magic_map", "void_communicator", 600).addItemInputs([
    coin_10000 * 4,
    <minecraft:paper>,
    <twilightforest:torchberries>
]).addItemOutput(magic_map).build();

// 按id顺序添加所有我的世界附魔书交换配方，等级为原版上限
val enchanted_book_price = 64;
RecipeBuilder.newBuilder("enchanted_book", "void_communicator", 600).addItemInputs([
    <minecraft:book>*1,
    <ore:gemLapis>,
    <minecraft:iron_helmet>,
     coin_10000 * enchanted_book_price
]).addItemOutput(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 0 as short}]})* 1).build();

RecipeBuilder.newBuilder("enchanted_book2", "void_communicator", 600).addItemInputs([
    <minecraft:book>*1,
    <ore:gemLapis>,
    <minecraft:lava_bucket>,
    coin_10000 * enchanted_book_price
]).addItemOutput(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 1 as short}]})* 1).build();


RecipeBuilder.newBuilder("enchanted_book3", "void_communicator", 600).addItemInputs([
    <minecraft:book>*1,
    <ore:gemLapis>,
    <ore:blockSlime>,
    coin_10000 * enchanted_book_price
]).addItemOutput(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 2 as short}]})* 1).build();

RecipeBuilder.newBuilder("enchanted_book4", "void_communicator", 600).addItemInputs([
    <minecraft:book>*1,
    <ore:gemLapis>,
    <ore:gunpowder>,
    coin_10000 * enchanted_book_price
]).addItemOutput(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 3 as short}]})* 1).build();

RecipeBuilder.newBuilder("enchanted_book5", "void_communicator", 600).addItemInputs([
    <minecraft:book>*1,
    <ore:gemLapis>,
    <minecraft:shield>,
    coin_10000 * enchanted_book_price
]).addItemOutput(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 4 as short}]})* 1).build();

RecipeBuilder.newBuilder("enchanted_book6", "void_communicator", 600).addItemInputs([
    <minecraft:book>*1,
    <ore:gemLapis>,
    <minecraft:iron_sword>,
    coin_10000 * enchanted_book_price
]).addItemOutput(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 16 as short}]})* 1).build();

// 亡灵杀手附魔
RecipeBuilder.newBuilder("enchanted_book7", "void_communicator", 600).addItemInputs([
    <minecraft:book>*1,
    <ore:gemLapis>,
    <minecraft:rotten_flesh>,
    coin_10000 * enchanted_book_price
]).addItemOutput(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 17 as short}]})* 1).build();

RecipeBuilder.newBuilder("enchanted_book8", "void_communicator", 600).addItemInputs([
    <minecraft:book>*1,
    <ore:gemLapis>,
    <minecraft:spider_eye>,
    coin_10000 * enchanted_book_price
]).addItemOutput(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 18 as short}]})* 1).build();

RecipeBuilder.newBuilder("enchanted_book9", "void_communicator", 600).addItemInputs([
    <minecraft:book>*1,
    <ore:gemLapis>,
    <minecraft:ghast_tear>,
    coin_10000 * enchanted_book_price
]).addItemOutput(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 19 as short}]})* 1).build();

RecipeBuilder.newBuilder("enchanted_book10", "void_communicator", 600).addItemInputs([
    <minecraft:book>*1,
    <ore:gemLapis>,
    <minecraft:blaze_powder>,
    coin_10000 * enchanted_book_price
]).addItemOutput(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 20 as short}]})* 1).build();

RecipeBuilder.newBuilder("enchanted_book11", "void_communicator", 600).addItemInputs([
    <minecraft:book>*1,
    <ore:gemLapis>,
    <minecraft:blaze_rod>,
    coin_10000 * enchanted_book_price
]).addItemOutput(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 21 as short}]})* 1).build();

RecipeBuilder.newBuilder("enchanted_book12", "void_communicator", 600).addItemInputs([
    <minecraft:book>*1,
    <ore:gemLapis>,
    <minecraft:ender_eye>,
    coin_10000 * enchanted_book_price
]).addItemOutput(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 22 as short}]})* 1).build();

RecipeBuilder.newBuilder("enchanted_book13", "void_communicator", 600).addItemInputs([
    <minecraft:book>*1,
    <ore:gemLapis>,
    <minecraft:iron_pickaxe>,
    coin_10000 * enchanted_book_price
]).addItemOutput(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 32 as short}]})* 1).build();

RecipeBuilder.newBuilder("enchanted_book14", "void_communicator", 600).addItemInputs([
    <minecraft:book>*1,
    <ore:gemLapis>,
    <minecraft:golden_pickaxe>,
    coin_10000 * enchanted_book_price * 4
]).addItemOutput(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 33 as short}]})* 1).build();


RecipeBuilder.newBuilder("enchanted_book15", "void_communicator", 600).addItemInputs([
    <minecraft:book>*1,
    <ore:gemLapis>,
    <minecraft:anvil>,
    coin_10000 * enchanted_book_price
]).addItemOutput(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 34 as short}]})* 1).build();
