import mods.zenstages.ZenStager;
import mods.zenstages.Stage;



static  diamond as Stage = ZenStager.getStage("diamond"); 

diamond.addRecipeRegex("minecraft:diamond_.*");
ZenStager.buildAll();