import mods.zenstages.ZenStager;
import mods.zenstages.Stage;



static  SteelStage as Stage = ZenStager.getStage("steel"); 
SteelStage.addRecipeRegex("hbm:steel_.*");
ZenStager.buildAll();