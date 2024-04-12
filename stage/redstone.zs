import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

// Recipes.setRecipeStage("stone", <minecraft:stone_hoe>);

static RedStoneStage as Stage = ZenStager.getStage("redstone"); 
RedStoneStage.addRecipeName("minecraft:comparator");
RedStoneStage.addRecipeName("minecraft:repeater");
RedStoneStage.addRecipeRegex("minecraft:redstone_.*");