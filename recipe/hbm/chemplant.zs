//reloadable
import mods.ntm.Chemplant;
// mods.ntm.Chemplant.addChemplantRecipe(373, "TEST_NAME", null, ["steam", "oil"], [800, 200]
// , [<minecraft:boat>], ["water", "lava"], [500, 600], 100);
Chemplant.addChemplantRecipe(900, "twilightforest_naga_scale", null, ["naga_blood"],[250],[<twilightforest:naga_scale>],null,null,100);
// Chemplant.addChemplantRecipe(901, "hbm_circuit_red_copper", [<hbm:circuit_copper>, <ore:dustAnyPlastic>*16, <threng:material:6>,<hbm:plate_saturnite>], ["sulfuric_acid"], [250],[<hbm:circuit_red_copper>], null, null, 300);
Chemplant.addChemplantRecipe(901, "hbm_circuit_red_copper", [<hbm:circuit_copper>, <hbm:powder_polymer>*16, <threng:material:6>,<hbm:plate_saturnite>], ["sulfuric_acid"], [250],[<hbm:circuit_red_copper>], null, null, 300);

Chemplant.addChemplantRecipe(902, "mercury", [<minecraft:redstone_block>], ["water"], [125],null, ["mercury"], ["125"], 300);

mods.ntm.Chemplant.removeChemplantRecipe(450);

// Chemplant.addChemplantRecipe(903,"hbm_circuit_green_copper", [<hbm:circuit_red_copper>*4, <ore:dustAnyResistantAlloy>*4, <threng:material:14>,<ore:plateSchrabidium>], ["solvent"], [2000],
// [<hbm:circuit_gold>], null, null, 300);

Chemplant.addChemplantRecipe(903,"hbm_circuit_green_copper", [<hbm:circuit_red_copper>*4, <hbm:powder_tcalloy>*4, <threng:material:14>,<hbm:plate_schrabidium>], ["solvent"], [2000],
[<hbm:circuit_gold>], null, null, 300);