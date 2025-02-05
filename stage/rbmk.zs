// rbmk stage
import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static RbmkStage as Stage = ZenStager.getStage("rbmk");

RbmkStage.addRecipeRegex("minecraft:iron_(?!bars).+");

ZenStager.buildAll();

