import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

// Recipes.setRecipeStage("stone", <minecraft:stone_hoe>);

static  StoneStage as Stage = ZenStager.getStage("stone"); 
StoneStage.addRecipeRegex("minecraft:stone_.*");
ZenStager.buildAll();
