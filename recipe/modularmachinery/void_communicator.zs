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
