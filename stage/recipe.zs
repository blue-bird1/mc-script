import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static  StoneStage as Stage = ZenStager.getStage("stone"); 
StoneStage.addRecipeRegex("minecraft:stone_.*");

static  IronStage as Stage = ZenStager.getStage("iron"); 
IronStage.addRecipeRegex("minecraft:iron_(?!bars).+");


static RbmkStage as Stage = ZenStager.getStage("rbmk");
RbmkStage.addRecipeRegex("hbm:rbmk.+");

static RedStoneStage as Stage = ZenStager.getStage("redstone"); 
RedStoneStage.addRecipeName("minecraft:comparator");
RedStoneStage.addRecipeName("minecraft:repeater");
RedStoneStage.addRecipeRegex("minecraft:redstone_.*");

static  SteelStage as Stage = ZenStager.getStage("steel"); 
SteelStage.addRecipeRegex("hbm:steel_.*");
ZenStager.buildAll();
