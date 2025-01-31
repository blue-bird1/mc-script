#reloadable
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder; //此行仅限模块化机械：社区版

val builder as RecipePrimer = RecipeBuilder.newBuilder("stell", "furnace", 100);
builder.addItemInputs([
    <ore:ingotIron> * 1,
]);
builder.addEnergyPerTickInput(4096);
builder.addFluidInput(<liquid:oxygen>*1000);
builder.addItemOutput(<hbm:ingot_steel> * 1);
builder.build();

val builder2 as RecipePrimer = RecipeBuilder.newBuilder("dura_stell", "furnace", 100);
builder2.addItemInputs([
    <ore:dustIron> * 1,
    <ore:dustCobalt> *1 ,
    <ore:dustTungsten> *2,
]);
builder2.addEnergyPerTickInput(4096);
builder2.addFluidInput(<liquid:oxygen> *1000);
builder2.addItemOutput(<hbm:ingot_dura_steel> * 1);
builder2.build();

val builder3 as RecipePrimer = RecipeBuilder.newBuilder("dura_stell", "furnace", 100);
builder3.addItemInputs([
    <ore:dustSteel> *1 ,
    <ore:dustCobalt> *1 ,
]);
builder3.addEnergyPerTickInput(4096 * 4);
builder3.addFluidInput(<liquid:oxygen> *1000);
builder3.addItemOutput(<hbm:ingot_dura_steel> * 1);
builder3.build();


RecipeBuilder.newBuilder("ingot_starmetal", "furnace", 100).addItemInputs([
    <ore:ingotSaturnite> * 1,
    <hbm:ingot_meteorite> *1 ,
]).addEnergyPerTickInput(80000).addFluidInput(<liquid:oxygen> *1000).addItemOutput(<hbm:ingot_starmetal>* 1).build();

RecipeBuilder.newBuilder("ingotFluixSteel", "furnace", 100).addItemInputs([
    <ore:ingotDuraSteel> * 1,
    <ore:ingotStarmetal> *1 ,
    <threng:material:1> *1
]).addEnergyPerTickInput(80000).addFluidInput(<liquid:oxygen> *1000).addItemOutput(<threng:material>* 1).build();

RecipeBuilder.newBuilder("ingot_meteorite_forged", "furnace", 100).addItemInputs([
    <hbm:ingot_meteorite> * 1,
    <ore:coalCoke>*1
]).addEnergyPerTickInput(32000).addFluidInput(<liquid:oxygen> *1000).addFluidInput(<liquid:hydrogen> * 1000).addItemOutput(<hbm:ingot_meteorite_forged>* 1).build();

RecipeBuilder.newBuilder("ingot_tcalloy", "furnace", 100).addItemInputs([
    <ore:ingotTc99>* 1,
    <ore:ingotSteel> *1
]).addEnergyPerTickInput(800000).addFluidInput(<liquid:oxygen> *1000).addFluidInput(<liquid:hydrogen> * 1000).addItemOutput(<hbm:ingot_tcalloy>* 1).build();


