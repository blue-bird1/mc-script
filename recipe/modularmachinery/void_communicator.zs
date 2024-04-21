#reloadable
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder; 


val base_coin = 8;
val builder as RecipePrimer = RecipeBuilder.newBuilder("iron_book", "void_communicator", 600);
builder.addItemInputs([
    <minecraft:book> * 1,
    <ore:ingotIron> * 16,
    <contenttweaker:emc_coin_10000> * base_coin,
]);
builder.addItemOutput(<contenttweaker:iron_book> * 1);
builder.build();


val builder2 as RecipePrimer = RecipeBuilder.newBuilder("redstone_book", "void_communicator", 600);
builder2.addItemInputs([
    <minecraft:book>*1,
    <ore:dustRedstone> * 16,
    <contenttweaker:emc_coin_10000> * base_coin,
]);
builder2.addItemOutput(<contenttweaker:redstone_book> * 1);
builder2.build();

val builder3 as RecipePrimer = RecipeBuilder.newBuilder("template_folder", "void_communicator", 600);
builder3.addItemInputs([
    <minecraft:book>*1,
    <ore:gemLapis>* 16,
    <contenttweaker:emc_coin_10000> * 32,
]);
builder3.addItemOutput(<hbm:template_folder> * 1);
builder3.build();


RecipeBuilder.newBuilder("template_folder2", "void_communicator", 600).addItemInputs([
    <minecraft:book>*1,
    <hbm:cap_nuka>* 256,
    <ore:gemLapis>* 16,
]).addItemOutput(<hbm:template_folder>* 1).build();

val builder4 as RecipePrimer = RecipeBuilder.newBuilder("circuit_template_1", "void_communicator", 600);
builder4.addItemInputs([
    <ore:blockIron> * 1,
    <ore:crystalCertusQuartz>* 16,
    <contenttweaker:emc_coin_10000> * base_coin,
]);
builder4.addItemOutput(<appliedenergistics2:material:13>* 1);
builder4.build();

val builder5 as RecipePrimer = RecipeBuilder.newBuilder("circuit_template_2", "void_communicator", 600);
builder5.addItemInputs([
    <ore:blockIron> * 1,
    <ore:gemDiamond> * 16,
    <contenttweaker:emc_coin_10000> * base_coin,
]);
builder5.addItemOutput(<appliedenergistics2:material:14>* 1);
builder5.build();

val builder6 as RecipePrimer = RecipeBuilder.newBuilder("circuit_template_3", "void_communicator", 600);
builder6.addItemInputs([
    <ore:blockIron> * 1,
    <ore:ingotGold>* 16,
    <contenttweaker:emc_coin_10000> * base_coin,
]);
builder6.addItemOutput(<appliedenergistics2:material:15>* 1);
builder6.build();

RecipeBuilder.newBuilder("circuit_template_4", "void_communicator", 600).addItemInputs([
    <ore:blockIron> * 1,
    <ore:itemSilicon>* 16,
    <contenttweaker:emc_coin_10000> * 64,
]).addItemOutput(<appliedenergistics2:material:19>* 1).build();

val builder7 as RecipePrimer = RecipeBuilder.newBuilder("alchemy_book", "void_communicator", 600);
builder7.addItemInputs([
    <projecte:item.pe_fuel> * 64,
    <projecte:item.pe_covalence_dust> *64,
    <minecraft:book>*1,
]);
builder7.addItemOutput(<contenttweaker:alchemy_book>* 1);
builder7.build();


RecipeBuilder.newBuilder("hbm:bobmazon_materials", "void_communicator", 600).addItemInputs([
    <minecraft:book>*1,
    <hbm:cap_nuka>* 64,
    <ore:ingotSteel>
]).addItemOutput(<hbm:bobmazon_materials>* 1).build();


RecipeBuilder.newBuilder("touhou_little_maid:hakurei_gohei", "void_communicator", 600).addItemInputs([
    <contenttweaker:emc_coin_10000> * 32,
    <minecraft:paper>*2,
    <minecraft:stick>*2
]).addItemOutput(<touhou_little_maid:hakurei_gohei>* 1).build();