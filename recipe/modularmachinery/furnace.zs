#reloadable
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder; //此行仅限模块化机械：社区版

val base_energy = 4096;

RecipeBuilder.newBuilder("stell", "furnace", 100)
    .addItemInputs([
        <ore:ingotIron> * 1,
    ])
    .addEnergyPerTickInput(base_energy)
    .addFluidInput(<liquid:oxygen>*1000)
    .addItemOutput(<hbm:ingot_steel> * 1)
    .build();

RecipeBuilder.newBuilder("dura_stell", "furnace", 600)
    .addItemInputs([
        <ore:dustIron> * 1,
        <ore:dustTungsten> *2,
    ])
    .addEnergyPerTickInput(base_energy)
    .addFluidInput(<liquid:oxygen> *1000)
    .addItemOutput(<hbm:ingot_dura_steel> * 1)
    .build();

RecipeBuilder.newBuilder("dura_stell2", "furnace", 100)
    .addItemInputs([
        <ore:dustSteel> *1 ,
        <ore:dustCobalt> *1 ,
    ])
    .addEnergyPerTickInput(base_energy * 4 * 6)
    .addFluidInput(<liquid:oxygen> *1000)
    .addItemOutput(<hbm:ingot_dura_steel> * 1)
    .build();


RecipeBuilder.newBuilder("ingot_starmetal", "furnace", 600).addItemInputs([
    <ore:ingotSaturnite> * 1,
    <hbm:ingot_meteorite> *1 ,
]).addEnergyPerTickInput(80000).addFluidInput(<liquid:oxygen> *1000).addItemOutput(<hbm:ingot_starmetal>* 1).build();

RecipeBuilder.newBuilder("ingotFluixSteel", "furnace", 100).addItemInputs([
    <ore:ingotStarmetal> *1 ,
    <threng:material:1> *1,
    <ore:dustSteel> *1
]).addEnergyPerTickInput(base_energy * 20).addFluidInput(<liquid:oxygen> *1000).addFluidInput(<liquid:sulfuric_acid> * 1000).addItemOutput(<threng:material>* 1).build();


RecipeBuilder.newBuilder("ingotFluixSteel2", "furnace", 1200).addItemInputs([
    <threng:material:2>,

]).addEnergyPerTickInput(base_energy * 200).addFluidInput(<liquid:oxygen> *1000).addFluidInput(<liquid:solvent> * 1000).addItemOutput(<threng:material>* 1).build();

// <threng:material:2> *1 by  <ore:dustIron> * 1 and  <threng:material:1> *1 
RecipeBuilder.newBuilder("threng_material_2", "furnace", 300).addItemInputs([
    <ore:dustIron> * 1,
    <threng:material:1> *1
]).addEnergyPerTickInput(base_energy * 20).addFluidInput(<liquid:oxygen>*1000).addFluidInput(<liquid:sulfuric_acid>*1000).addItemOutput(<threng:material:2>*1).build();



RecipeBuilder.newBuilder("ingot_meteorite_forged", "furnace", 100).addItemInputs([
    <hbm:ingot_meteorite> * 1,
    <ore:coalCoke>*1
]).addEnergyPerTickInput(base_energy * 8).addFluidInput(<liquid:oxygen> *1000).addFluidInput(<liquid:hydrogen> * 1000).addItemOutput(<hbm:ingot_meteorite_forged>* 1).build();

RecipeBuilder.newBuilder("ingot_tcalloy", "furnace", 600).addItemInputs([
    <ore:ingotTc99>* 1,
    <ore:ingotSteel> *1
]).addEnergyPerTickInput(base_energy * 40).addFluidInput(<liquid:oxygen> *1000).addFluidInput(<liquid:hydrogen> * 1000).addItemOutput(<hbm:ingot_tcalloy>* 1).build();


// fluid output <liquid:knightmetal>, input <twilightforest:phantom_helmet>
RecipeBuilder.newBuilder("knightmetal", "furnace", 100).addItemInputs([
    <twilightforest:phantom_helmet>*1
]).addEnergyPerTickInput(base_energy).addFluidInput(<liquid:oxygen> *1000).addItemOutput(<twilightforest:knightmetal_ingot:*>* 1).build();
// input <twilightforest:phantom_chestplate>
RecipeBuilder.newBuilder("phantom_chestplate", "furnace", 100).addItemInputs([
    <twilightforest:phantom_chestplate>*1
]).addEnergyPerTickInput(base_energy).addFluidInput(<liquid:oxygen> *1000).addItemOutput(<twilightforest:knightmetal_ingot:*> * 2).build();


// output <hbm:ingot_magnetized_tungsten>, input <ore:ingotSchrabidium>, <ore:ingotTungsten>
RecipeBuilder.newBuilder("ingot_magnetized_tungsten", "furnace", 3600).addItemInputs([
    <ore:ingotSchrabidium>*1,
    <ore:ingotTungsten>*1
]).addEnergyPerTickInput(base_energy * 200).addFluidInput(<liquid:oxygen> *1000).addItemOutput(<hbm:ingot_magnetized_tungsten>* 1).build();


