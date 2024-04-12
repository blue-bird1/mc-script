import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static  IronStage as Stage = ZenStager.getStage("iron"); 
IronStage.addRecipeRegex("minecraft:iron_(?!bars).+");
ZenStager.buildAll();