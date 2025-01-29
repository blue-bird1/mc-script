#loader crafttweaker reloadable
import mods.ntm.Assembler;
Assembler.addRecipe(<hbm:machine_press>, [<ore:blockIron>*4, <minecraft:furnace>,<minecraft:sticky_piston>], 300);
Assembler.addRecipe(<hbm:machine_coal_off>, [<ore:ingotSteel>*4, <minecraft:furnace>,<hbm:tank_steel>,<hbm:coil_copper_torus>*4], 300);

Assembler.addRecipe(<hbm:motor>*1, [<ore:plateAdvancedAlloy>*4,<hbm:coil_gold>*2,<hbm:coil_gold_torus>*2], 100);

Assembler.removeRecipe(<hbm:block_meteor>);
Assembler.removeRecipe(<hbm:circuit_copper>);

Assembler.replaceRecipe(<hbm:circuit_copper>, [<hbm:circuit_aluminium>, <appliedenergistics2:material:22>,<appliedenergistics2:material:23>,<appliedenergistics2:material:24>, <ore:plateAdvancedAlloy>*2, <hbm:wire_red_copper>*4], 200);
Assembler.addRecipe(<appliedenergistics2:controller>, [<hbm:circuit_copper>*4,<ore:crystalPureCertusQuartz>*4,<hbm:ingot_meteorite_forged>*6],600);
Assembler.addRecipe(<appliedenergistics2:part:220>, [<ore:enderpearl>*2,<hbm:ingot_meteorite_forged>,<minecraft:sticky_piston>,<hbm:crane_ejector>,<hbm:crane_inserter>], 100);
Assembler.addRecipe(<appliedenergistics2:inscriber>, [<hbm:circuit_copper>*2, <hbm:ingot_meteorite_forged>*6, <minecraft:anvil>, <minecraft:sticky_piston>], 600);
Assembler.addRecipe(<appliedenergistics2:molecular_assembler>, [<hbm:circuit_copper>*2, <hbm:ingot_meteorite_forged>*6, <minecraft:crafting_table>, 
<appliedenergistics2:material:43>, <appliedenergistics2:material:44>], 600);


Assembler.addRecipe(<modularmachinery:furnace_controller>, [<hbm:machine_difurnace_off>, <hbm:ingot_meteorite_forged>*8, <hbm:coil_gold_torus>*8,<hbm:circuit_copper>*1,<hbm:red_wire_coated>*16], 1200);
Assembler.replaceRecipe(<hbm:circuit_red_copper>, [<hbm:circuit_copper>, <threng:material:14>, <threng:material:6>, <hbm:plate_polymer>*4,<hbm:wire_red_copper>*4], 300);
Assembler.replaceRecipe(<hbm:machine_chemplant>, [<ore:ingotSteel>*8, <ore:plateCopper>*6,<hbm:hull_small_steel>*2,<hbm:tank_steel>*4,<hbm:hull_big_steel>,
<hbm:wire_red_copper>*16,<hbm:wire_tungsten>*3,<hbm:circuit_copper>*4,<hbm:plate_polymer>*8],600);
Assembler.addRecipe(<hbm:machine_assembler>,[<hbm:motor>*2,<hbm:circuit_copper>*2,<ore:blockGlass>*4,<ore:plateAdvancedAlloy>*4,<hbm:crate_steel>], 600);
Assembler.replaceRecipe(<hbm:machine_refinery>,[<ore:plateSteel>*16,<ore:ingotSteel>*20,<hbm:plate_copper>*16,<hbm:hull_big_steel>*6,<hbm:pipes_steel>*2,<hbm:coil_tungsten>*8,
<hbm:wire_red_copper>*8,<hbm:circuit_copper>*4,<hbm:plate_polymer>*8], 600);
Assembler.replaceRecipe(<hbm:machine_large_turbine>, [<hbm:hull_big_steel>*1, <ore:plateSteel>*16, <hbm:rotor_steel>*2,<hbm:generator_steel>*4,<hbm:bolt_compound>*3,<hbm:pipes_steel>,<hbm:generator_steel>*4,<hbm:circuit_red_copper>*16],600);

// <buildinggadgets:buildingtool>.withTag({blockstate: {Name: "minecraft:air"}})
Assembler.addRecipe(<buildinggadgets:buildingtool>.withTag({blockstate: {Name: "minecraft:air"}}), [<ore:plateIron>*8, <hbm:circuit_aluminium>*4,<ore:paneGlass>,<minecraft:stone_button>*4,], 600);
Assembler.addRecipe(<buildinggadgets:destructiontool>, 
                     [<ore:plateIron>*8, <ore:dustRedstone>*4,<ore:paneGlass>,<minecraft:stone_button>*4,], 600);

Assembler.addRecipe(<hbm:red_cable>, [<hbm:plate_polymer>*2, <hbm:wire_red_copper>*2], 60);

Assembler.addRecipe(<hbm:red_wire_coated>, [<hbm:plate_polymer>*4, <hbm:wire_red_copper>*4], 60);

Assembler.addRecipe(<hbm:oil_detector>, [<hbm:circuit_copper>*2, <ore:ingotDuraSteel>*4, <hbm:wire_gold>*2], 600);

// 模块化机械
// 中型流体输入仓
Assembler.addRecipe(<modularmachinery:blockfluidinputhatch:2>,[<modularmachinery:blockfluidinputhatch:1>, <hbm:tank_steel>*4],200);
// 强化流体输入仓
Assembler.addRecipe(<modularmachinery:blockfluidinputhatch:3>,[<modularmachinery:blockfluidinputhatch:2>, <hbm:machine_fluidtank>*4, <hbm:circuit_aluminium> *1],200);

// 中型能源输入仓
Assembler.addRecipe(<modularmachinery:blockenergyinputhatch:2>,[<modularmachinery:blockenergyinputhatch:1>, <hbm:red_wire_coated>*4],200);
// 强化能源输入仓
Assembler.addRecipe(<modularmachinery:blockenergyinputhatch:3>,[<modularmachinery:blockenergyinputhatch:2>, <hbm:red_wire_coated>*4,<hbm:circuit_aluminium> *1],200);
// 大型能源输入仓
Assembler.addRecipe(<modularmachinery:blockenergyinputhatch:4>,[<modularmachinery:blockenergyinputhatch:3>, <hbm:red_wire_coated>*4,  <hbm:circuit_copper>*1 ],200);