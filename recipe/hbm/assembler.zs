#reloadable
import mods.ntm.Assembler;
import scripts.recipe.hbm.const.machineinery_batch_asssembler_time;
import scripts.recipe.hbm.const.upgrades;

val basic_cricult = <hbm:circuit_aluminium>;
val basic_cricult_2 = <hbm:circuit_copper>;
val basic_cricult_3 = <hbm:circuit_red_copper>;

Assembler.removeRecipe(<hbm:block_meteor>);
Assembler.removeRecipe(<hbm:circuit_copper>);
Assembler.removeRecipe(basic_cricult_3);

for key, value in upgrades {
    for key, item in value {
        Assembler.removeRecipe(item);
    }
}


Assembler.addRecipe(<hbm:machine_assembler>,[<hbm:motor>*2,<hbm:circuit_copper>*2,<ore:blockGlass>*4,<ore:plateAdvancedAlloy>*4,<hbm:crate_steel>], 600);

Assembler.addRecipe(<hbm:machine_press>, [<ore:blockIron>*4, <minecraft:furnace>,<minecraft:sticky_piston>], 300);
Assembler.addRecipe(<hbm:machine_coal_off>, [<ore:ingotSteel>*4, <minecraft:furnace>,<hbm:tank_steel>,<hbm:coil_copper_torus>*4], 300);

Assembler.addRecipe(<hbm:motor>*1, [<ore:plateAdvancedAlloy>*4,<hbm:coil_gold>*2,<hbm:coil_gold_torus>*2], 100);
Assembler.addRecipe(<appliedenergistics2:controller>, [<hbm:circuit_copper>*4,<ore:crystalPureCertusQuartz>*4,<hbm:ingot_meteorite_forged>*6],600);
Assembler.addRecipe(<appliedenergistics2:part:220>, [<ore:enderpearl>*2,<hbm:ingot_meteorite_forged>,<minecraft:sticky_piston>,<hbm:crane_ejector>,<hbm:crane_inserter>], 100);
Assembler.addRecipe(<appliedenergistics2:inscriber>, [<hbm:circuit_copper>*2, <hbm:ingot_meteorite_forged>*6, <minecraft:anvil>, <minecraft:sticky_piston>], 600);
Assembler.addRecipe(<appliedenergistics2:molecular_assembler>, [<hbm:circuit_copper>*2, <hbm:ingot_meteorite_forged>*6, <minecraft:crafting_table>, 
<appliedenergistics2:material:43>, <appliedenergistics2:material:44>], 600);


Assembler.addRecipe(<modularmachinery:furnace_controller>, [<hbm:machine_difurnace_off>, <hbm:ingot_meteorite_forged>*8, <hbm:coil_gold_torus>*8,<hbm:circuit_copper>*1,<hbm:red_wire_coated>*16], 1200);
// <buildinggadgets:buildingtool>.withTag({blockstate: {Name: "minecraft:air"}})
Assembler.addRecipe(<buildinggadgets:buildingtool>.withTag({blockstate: {Name: "minecraft:air"}}), [<ore:plateIron>*8, basic_cricult*4,<ore:paneGlass>,<minecraft:stone_button>*4,], 600);
Assembler.addRecipe(<buildinggadgets:destructiontool>, 
                     [<ore:plateIron>*8, <ore:dustRedstone>*4,<ore:paneGlass>,<minecraft:stone_button>*4,], 600);

Assembler.addRecipe(<hbm:red_cable>, [<hbm:plate_polymer>*2, <hbm:wire_red_copper>*2], 60);

Assembler.addRecipe(<hbm:red_wire_coated>, [<hbm:plate_polymer>*4, <hbm:wire_red_copper>*4], 60);

Assembler.addRecipe(<hbm:oil_detector>, [<hbm:circuit_copper>*2, <ore:ingotDuraSteel>*4, <hbm:wire_gold>*2], 600);

// <hbm:machine_mixer> recipt by <ore:plateSteel> *4 ,<hbm:bolt_dura_steel>*4, <ore:blockGlass> *2, <hbm:motor>

Assembler.addRecipe(<hbm:machine_mixer>, [<ore:plateSteel> *4, <hbm:bolt_dura_steel>*4, <ore:blockGlass> *2, <hbm:motor>], 600);

val ae2_time as int = 100;
// ae 2 
Assembler.addRecipe(<appliedenergistics2:material:36>,[<appliedenergistics2:material:35> * 4, basic_cricult , <appliedenergistics2:quartz_glass>, <ore:dustRedstone> *4 ], ae2_time);
Assembler.addRecipe(<appliedenergistics2:material:37>,[<appliedenergistics2:material:36> * 4, basic_cricult_2 , <appliedenergistics2:quartz_glass>, <ore:dustRedstone> *4 ], ae2_time *2);
Assembler.addRecipe(<appliedenergistics2:material:38>,[<appliedenergistics2:material:37> * 4, basic_cricult_3 , <appliedenergistics2:quartz_glass>, <ore:dustRedstone> *4 ], ae2_time *4);


// 模块化机械
// 中型流体输入仓
Assembler.addRecipe(<modularmachinery:blockfluidinputhatch:2>,[<modularmachinery:blockfluidinputhatch:1>, <hbm:tank_steel>*4],machineinery_batch_asssembler_time);
// 强化流体输入仓
Assembler.addRecipe(<modularmachinery:blockfluidinputhatch:3>,[<modularmachinery:blockfluidinputhatch:2>, <hbm:machine_fluidtank>*4, basic_cricult *1],machineinery_batch_asssembler_time * 2);

// 中型能源输入仓
Assembler.addRecipe(<modularmachinery:blockenergyinputhatch:2>,[<modularmachinery:blockenergyinputhatch:1>, <hbm:red_wire_coated>*4],machineinery_batch_asssembler_time);
// 强化能源输入仓
Assembler.addRecipe(<modularmachinery:blockenergyinputhatch:3>,[<modularmachinery:blockenergyinputhatch:2>, <hbm:red_wire_coated>*4,basic_cricult *1],machineinery_batch_asssembler_time *2);
// 大型能源输入仓
Assembler.addRecipe(<modularmachinery:blockenergyinputhatch:4>,[<modularmachinery:blockenergyinputhatch:3>, <hbm:red_wire_coated>*4,  <hbm:circuit_copper>*1 ],machineinery_batch_asssembler_time * 4 );


val mid_assembler_time as int = 300;

Assembler.addRecipe(<hbm:upgrade_speed_1>, [<ore:dustRedstone>*4, <ore:dustDuraSteel>*2,<hbm:upgrade_template>, <hbm:wire_red_copper>*6,<hbm:coil_gold_torus>*2, <hbm:circuit_copper>*1 ], 300);
// <hbm:upgrade_power_1>
Assembler.addRecipe(<hbm:upgrade_power_1>, [<ore:dustLapis> *4, <ore:dustDuraSteel>*2,<hbm:upgrade_template>, <hbm:wire_red_copper>*6,<hbm:coil_gold_torus>*2, <hbm:circuit_copper>*1 ], 300);
// <hbm:upgrade_effect_1>
Assembler.addRecipe(<hbm:upgrade_effect_1>, [<ore:dustEmerald> *4, <ore:dustDuraSteel>*2,<hbm:upgrade_template>, <hbm:wire_red_copper>*6,<hbm:coil_gold_torus>*2, <hbm:circuit_copper>*1 ], 300);

Assembler.addRecipe(<threng:material:4>,[<ore:ingotFluixSteel>*4, <ore:ingotAnyPlastic>*2 , <appliedenergistics2:quartz_glass>*2, basic_cricult_2 *1], mid_assembler_time);

// <hbm:factory_titanium_hull> 
Assembler.addRecipe(<hbm:factory_titanium_hull>, [<hbm:ingot_meteorite_forged>*8, <ore:ingotAnyPlastic>*4,<ore:plateTitanium>*4], mid_assembler_time);
// <hbm:factory_titanium_core>
Assembler.addRecipe(<hbm:factory_titanium_core>, [<hbm:machine_assembler>, basic_cricult_3,<hbm:red_cable>*8, <ore:ingotAnyPlastic>*4, <appliedenergistics2:interface>,<ore:plateTitanium>*4], mid_assembler_time);
// <modularmachinery:factory_controller>
Assembler.addRecipe(<modularmachinery:factory_controller>, [basic_cricult_3*4, <hbm:red_cable>*8, <ore:ingotAnyPlastic>*4, <appliedenergistics2:controller>, <ore:ingotStarmetal>*4, <modularmachinery:blockcontroller>],mid_assembler_time);


// Assembler.replaceRecipe(<hbm:reactor_computer>,[<hbm:reactor_conductor>*2,<hbm:circuit_targeting_tier3>*4], mid_assembler_time);

Assembler.replaceRecipe(<hbm:machine_gascent>, [<hbm:coil_tungsten>*4, <ore:plateSaturnite>*8, basic_cricult_3, <hbm:centrifuge_element>*4,<ore:ingotStarmetal>*2, <ore:ingotAnyPlastic> * 8 ], 300);
Assembler.replaceRecipe(<hbm:circuit_copper>, [<appliedenergistics2:material:22>,<appliedenergistics2:material:23>,<appliedenergistics2:material:24>, <ore:plateAdvancedAlloy>*2, <hbm:wire_red_copper>*4], 200);
// <hbm:circuit_aluminium>  by recipes.addShaped(<hbm:circuit_aluminium> , [[null, <hbm:wire_aluminium>, null],[<appliedenergistics2:material:16>, <appliedenergistics2:material:17>, <appliedenergistics2:material:18>], [null, <hbm:plate_copper>, null]]);
Assembler.replaceRecipe(<hbm:circuit_aluminium>, [<hbm:wire_aluminium>, <appliedenergistics2:material:23>,<ore:plateAdvancedAlloy> ], 100);

Assembler.replaceRecipe(<hbm:machine_chemplant>, [<ore:ingotSteel>*8, <ore:plateCopper>*6,<hbm:hull_small_steel>*2,<hbm:tank_steel>*4,<hbm:hull_big_steel>,
<hbm:wire_red_copper>*16,<hbm:wire_tungsten>*3,<hbm:circuit_copper>*4,<hbm:plate_polymer>*8],600);
Assembler.replaceRecipe(<hbm:machine_refinery>,[<ore:plateSteel>*16,<ore:ingotSteel>*20,<hbm:plate_copper>*16,<hbm:hull_big_steel>*6,<hbm:pipes_steel>*2,<hbm:coil_tungsten>*8,
<hbm:wire_red_copper>*8,<hbm:circuit_copper>*4,<hbm:plate_polymer>*8], 600);
Assembler.replaceRecipe(<hbm:machine_large_turbine>, [<hbm:hull_big_steel>*1, <ore:plateSteel>*16, <hbm:rotor_steel>*2,<hbm:generator_steel>*4,<hbm:bolt_compound>*3,<hbm:pipes_steel>,<hbm:generator_steel>*4,<hbm:circuit_red_copper>*16],600);
