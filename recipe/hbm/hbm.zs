#reloadable
recipes.remove(<hbm:template_folder>);
recipes.remove(<hbm:machine_press>);
recipes.remove(<hbm:machine_assembler>);
recipes.removeShapeless(<hbm:powder_steel>, [<hbm:powder_iron>, <hbm:powder_coal>]);


// 移除电路板合成配方
recipes.remove(<hbm:circuit_schrabidium>);
recipes.remove(<hbm:circuit_gold>);
recipes.remove(<hbm:circuit_red_copper>);
recipes.remove(<hbm:circuit_copper>);
recipes.remove(<hbm:circuit_aluminium>);

recipes.remove(<hbm:circuit_raw>);
recipes.remove(<hbm:rbmk_outgasser>);
recipes.remove(<hbm:machine_mixer>);

// recipes.removeByRegex("hbm:cobalt.+");
recipes.removeByRegex("hbm:stamp_.+_flat");
recipes.removeByRegex("hbm:blades_.+");
recipes.removeByRegex("hbm:upgrade_.+");
// wire
recipes.remove(<hbm:plate_polymer>);
recipes.remove(<hbm:red_cable>);
recipes.remove(<hbm:red_wire_coated>);
// recipes.remove(<hbm:powder_meteorite>);

recipes.remove(<hbm:motor>);
recipes.remove(<hbm:board_copper>);
recipes.remove(<hbm:machine_coal_off>);
recipes.remove(<hbm:furnace_iron>);
recipes.remove(<hbm:powder_tcalloy>);
recipes.remove(<hbm:inf_water>);
recipes.remove(<hbm:oil_detector>);

recipes.remove(<hbm:pipes_steel>);
// 修改<hbm:pipes_steel> 配方为3个竖着的 <ore:plateSteel>
recipes.addShaped(<hbm:pipes_steel>, [[null, <ore:plateSteel>, null], [null, <ore:plateSteel>, null], [null, <ore:plateSteel>, null]]);

recipes.removeByRegex("hbm:bobmazon_.+");


recipes.addShapeless("powder_coal",<hbm:powder_coal>, [<ore:gemCoal>, <ore:gravel>]);
recipes.addShaped(<hbm:bottle_empty>, [[null, <hbm:cap_nuka>, null],[<minecraft:glass_pane>, null, <minecraft:glass_pane>], [<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>]]);


// 移除电路板合成配方
recipes.remove(<hbm:circuit_schrabidium>);
recipes.remove(<hbm:circuit_gold>);
recipes.remove(<hbm:circuit_red_copper>);
recipes.remove(<hbm:circuit_copper>);
recipes.remove(<hbm:circuit_aluminium>);

recipes.remove(<hbm:rbmk_outgasser>);
recipes.addShaped(<hbm:rbmk_outgasser>, [[<hbm:steel_grate>, <minecraft:hopper>, <hbm:steel_grate>],[<hbm:steel_grate>, <hbm:rbmk_blank>, <hbm:steel_grate>], [<hbm:steel_grate>, <hbm:nugget_technetium>, <hbm:steel_grate>]]);
recipes.addShaped(<hbm:circuit_raw>, [[null, <hbm:wire_aluminium>, null],[<appliedenergistics2:material:16>, <appliedenergistics2:material:17>, <appliedenergistics2:material:18>], [null, <hbm:plate_copper>, null]]);
recipes.addShaped(<hbm:plate_polymer>, [[<hbm:ingot_polymer>, <hbm:ingot_polymer>, null],[null, null, null], [null, null, null]]);
recipes.addShaped(<hbm:inf_water>, [[<hbm:ingot_meteorite_forged>, <hbm:ingot_meteorite_forged>, <hbm:ingot_meteorite_forged>],[<hbm:ingot_meteorite_forged>, <projecte:item.pe_evertide_amulet>, <hbm:ingot_meteorite_forged>], [<hbm:ingot_meteorite_forged>, <hbm:ingot_meteorite_forged>, <hbm:ingot_meteorite_forged>]]);

