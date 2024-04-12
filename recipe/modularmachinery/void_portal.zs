#reloadable
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder; //此行仅限模块化机械：社区版

val builder as RecipePrimer = RecipeBuilder.newBuilder("machine_press", "void_portal", 1200);
builder.addItemInputs([
    <ore:blockIron> * 4,
    <minecraft:furnace> * 1,
    <minecraft:sticky_piston> * 1,
    <contenttweaker:emc_coin_10000> * 32,
]);
builder.addItemOutput(<hbm:machine_press> * 1);
builder.build();

val builder2 as RecipePrimer = RecipeBuilder.newBuilder("inscriber", "void_portal", 1200);
builder2.addItemInputs([
    <ore:blockIron> * 2,
    <ore:gemDiamond> * 8,
    <minecraft:sticky_piston> * 2,
    <contenttweaker:emc_coin_10000> * 32,
]);
builder2.addItemOutput(<appliedenergistics2:inscriber>* 1);
builder2.build();

val builder3 as RecipePrimer = RecipeBuilder.newBuilder("saitesi", "void_portal", 1200);
builder3.addItemInputs([
    <minecraft:sand> * 8,
    <contenttweaker:emc_coin_10000> * 1,
]);
builder3.addItemOutput(<appliedenergistics2:material>* 8);
builder3.build();

val builder4 as RecipePrimer = RecipeBuilder.newBuilder("coal_off", "void_portal", 1200);
builder4.addItemInputs([
    <ore:blockSteel> * 16,
    <ore:blockCoal>*16,
    <contenttweaker:emc_coin_10000> * 32,
]);
builder4.addItemOutput(<hbm:machine_coal_off>* 1);
builder4.build();


val builder5 as RecipePrimer = RecipeBuilder.newBuilder("assembler", "void_portal", 1200);
builder5.addItemInputs([
    <hbm:machine_press>*1,
    <hbm:circuit_aluminium> * 64,
    <contenttweaker:emc_coin_10000> * 64,
]);
builder5.addItemOutput(<hbm:machine_assembler>* 1);
builder5.build();


val builder6 as RecipePrimer = RecipeBuilder.newBuilder("block_meteor", "void_portal", 1200);
builder6.addItemInputs([
    <ore:ingotSaturnite>*16,
    <ore:ingotTungsten> * 16,
    <ore:ingotDuraSteel>*6,
    <contenttweaker:emc_coin_10000> * 16,
]);
builder6.addItemOutput(<appliedenergistics2:sky_stone_block>* 16);
builder6.build();


val builder7 as RecipePrimer = RecipeBuilder.newBuilder("charger", "void_portal", 1200);
builder7.addItemInputs([
    <hbm:ingot_meteorite>*16,
    <hbm:circuit_aluminium>  * 16,
    <contenttweaker:emc_coin_100000> * 16,
]);
builder7.addItemOutput(<appliedenergistics2:charger>* 1);
builder7.build();