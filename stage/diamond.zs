import mods.zenstages.ZenStager;
import mods.zenstages.Stage;



static  diamond as Stage = ZenStager.getStage("diamond"); 

diamond.addRecipeRegex("minecraft:diamond_.*");
diamond.addRecipeRegex("projecte:item.pe_divining_rod_.*");
diamond.addRecipeName("projecte:item.pe_klein_star");
ZenStager.buildAll();