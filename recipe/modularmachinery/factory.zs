#reloadable
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder; //此行仅限模块化机械：社区版
import mods.modularmachinery.RecipeEvent;
import mods.modularmachinery.RecipeCheckEvent;
import mods.modularmachinery.ActiveMachineRecipe;
import mods.modularmachinery.IMachineController;
import mods.modularmachinery.MMEvents;
import mods.modularmachinery.ControllerGUIRenderEvent;
import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import scripts.func.logDebug;
import mods.ntm.Assembler;


RecipeBuilder.newBuilder("recipe_setting", "factory", 1, 99).addItemInputs([
    <hbm:assembly_template>
]).setNBTChecker(function(ctrl as IMachineController, item as IItemStack) {
    val nbt  as IData = item.tag;
    if(isNull(nbt) || !(nbt has "type")) {
        return false;
    }
    ctrl.customData = nbt;
    return true;
}).addItemOutput(<hbm:assembly_template> * 1).addItemModifier(function(ctrl as IMachineController, oldItem as IItemStack) as IItemStack {
  if (isNull(ctrl.customData)) {
    logDebug("customData is null");
    return <hbm:assembly_template>;
  }
  if (!(ctrl.customData has "type")) {
    logDebug("type not found");
    return <hbm:assembly_template>;
  }
  return <hbm:assembly_template>.withTag({type: ctrl.customData.type.asInt()});

})
.addRecipeTooltip("为机器设置配方")
.build();

val exec = RecipeBuilder.newBuilder("exec", "factory", 100).addCheckHandler(function(event as RecipeCheckEvent) {
    val ctrl as IMachineController = event.controller;
    if (isNull(ctrl.customData) || !(ctrl.customData has "type")) {
        event.setFailed("未设置配方");
    }
    val type as int = ctrl.customData.type.asInt();
    val recipe as IIngredient[] = Assembler.getRecipeInputById(type);
    if (isNull(recipe)) {
        event.setFailed("未找到配方");
    }
});

for i in 0 to 5 {
    exec.addItemInputs([
        <hbm:template_folder>
    ]).addItemModifier(function(ctrl as IMachineController, oldItem as IItemStack) as IItemStack {
        val type as int = ctrl.customData.type.asInt();
        val recipe as IIngredient[] = Assembler.getRecipeInputById(type);
        if (i < recipe.length) {
            return recipe[i];
        } else {
            return null;
        }
    });
}


exec.addItemOutput(<hbm:template_folder> * 1).addItemModifier(function(ctrl as IMachineController, oldItem as IItemStack) as IItemStack { 
    if (isNull(ctrl.customData) || !(ctrl.customData has "type")) {
        logDebug("customData is null or type not found");
        return <hbm:template_folder>;
    }
    val type as int = ctrl.customData.type.asInt();
    val recipe as IIngredient = Assembler.getRecipeOutputById(type);
    if (isNull(recipe)) {
        logDebug("recipe  output is null");
        return <minecraft:cobblestone>;
    }
    return recipe;
})
.addRecipeTooltip("实际效果取决于机器内配方")
.addEnergyPerTickInput(4096/2)
.build();

MMEvents.onControllerGUIRender("factory", function(event as ControllerGUIRenderEvent) {
    val ctrl as IMachineController = event.controller;
    if (!(ctrl.customData has "type")) {
        event.extraInfo = "未设置配方";
    }else{
        val type = ctrl.customData.type.asInt();
        val stack as IItemStack = Assembler.getRecipeOutputById(type);
        event.extraInfo = "当前配方为:" + stack.displayName;
    }
});


