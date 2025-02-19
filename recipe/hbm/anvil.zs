import mods.ntm.Anvil;
import scripts.recipe.hbm.const.upgrades;
// Anvil.removeRecipe([<hbm:plate_copper>]);
Anvil.removeRecipe([<hbm:machine_assembler>]);
Anvil.removeRecipe([<hbm:motor>*2]);

for key, value in upgrades {
    for key, item in value {
        Anvil.removeRecipe([item]);
    }
}

Anvil.addRecipe(<hbm:red_wire_coated>,[<hbm:wire_red_copper>*4, <hbm:plate_polymer>*4], 2);
Anvil.addRecipe(<hbm:red_cable>,[<hbm:wire_red_copper>*2, <hbm:plate_polymer>*4],2);
Anvil.addRecipe(<hbm:plate_polymer>*4,[<minecraft:glass>*4, <projecte:item.pe_covalence_dust:2>*1], 2);

Anvil.addRecipe(<projecte:item.pe_ring_iron_band>,[<ore:ingotDuraSteel>*8], 3);

Anvil.addRecipe(<hbm:furnace_iron>,[<ore:plateIron>*6, <minecraft:furnace>,<minecraft:brick_block>*3],1);

Anvil.addRecipe(<hbm:stamp_stone_flat>,[<ore:stone>*3],1);
Anvil.addRecipe(<hbm:stamp_iron_flat>,[<ore:ingotIron>*3], 2);
Anvil.addRecipe(<hbm:stamp_titanium_flat>,[<ore:ingotTitanium>*3], 2);
Anvil.addRecipe(<hbm:stamp_steel_flat>,[<ore:ingotSteel>*3], 3);
Anvil.addRecipe(<hbm:stamp_obsidian_flat>, [<ore:obsidian>*8],4);
Anvil.addRecipe(<hbm:stamp_schrabidium_flat>, [<ore:ingotSchrabidium>],5);
Anvil.addRecipe(<hbm:stamp_desh_flat>,[<ore:ingotWorkersAlloy>*8],6);

Anvil.addRecipe(<hbm:blades_aluminum>,[<ore:ingotAluminum>,<ore:plateAluminum>*4],2);
Anvil.addRecipe(<hbm:blades_gold>,[<ore:ingotGold>,<ore:plateGold>*4],2);
Anvil.addRecipe(<hbm:blades_iron>,[<ore:plateIron>*4, <ore:ingotIron>],2);
Anvil.addRecipe(<hbm:blades_steel>, [<ore:plateSteel>*4, <ore:ingotSteel>],3);
Anvil.addRecipe(<hbm:blades_titanium>, [<ore:plateTitanium>*4, <ore:ingotTitanium>],3);
Anvil.addRecipe(<hbm:blades_advanced_alloy>, [<ore:plateAdvancedAlloy>*4, <ore:ingotAdvancedAlloy>],4);
Anvil.addRecipe(<hbm:blades_schrabidium>, [<ore:ingotSchrabidium>,<ore:plateSchrabidium>*4],5);
// Anvil.addRecipe(<hbm:blades_desh_flat>,[<ore:ingotWorkersAlloy>,<ore:plateSchrabidium> ],6);