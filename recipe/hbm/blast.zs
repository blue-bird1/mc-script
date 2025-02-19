import mods.ntm.BlastFurnace;

BlastFurnace.replaceRecipe(<hbm:ingot_meteorite>, <hbm:powder_meteorite>, <ore:ingotAdvancedAlloy>);
BlastFurnace.removeRecipe(<hbm:ingot_tcalloy>);
BlastFurnace.removeRecipe(<hbm:ingot_magnetized_tungsten>);

BlastFurnace.removeRecipe(<hbm:ingot_dura_steel> * 2);
BlastFurnace.removeRecipe(<hbm:ingot_starmetal> * 2);
# BlastFurnace.addRecipe(<appliedenergistics2:quartz_glass>, <ore:dustQuartz>, <ore:blockGlassColorless>);
BlastFurnace.addRecipe( <ore:dustNetherQuartz>, <minecraft:glass>,<appliedenergistics2:quartz_glass>);
BlastFurnace.addRecipe( <ore:dustCertusQuartz>, <minecraft:glass>,<appliedenergistics2:quartz_glass>);