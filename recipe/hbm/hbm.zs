recipes.remove(<hbm:template_folder>);
recipes.remove(<hbm:machine_press>);
recipes.remove(<hbm:machine_assembler>);
recipes.removeShapeless(<hbm:powder_steel>, [<hbm:powder_iron>, <hbm:powder_coal>]);
recipes.remove(<hbm:circuit_raw>);

recipes.removeByRegex("hbm:cobalt.+");
recipes.removeByRegex("hbm:stamp_.+_flat");
recipes.removeByRegex("hbm:blades_.+");
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


recipes.remove(<hbm:rbmk_outgasser>);
recipes.addShaped(<hbm:rbmk_outgasser>, [[<hbm:steel_grate>, <minecraft:hopper>, <hbm:steel_grate>],[<hbm:steel_grate>, <hbm:rbmk_blank>, <hbm:steel_grate>], [<hbm:steel_grate>, <hbm:nugget_technetium>, <hbm:steel_grate>]]);
recipes.addShaped(<hbm:circuit_raw>, [[null, <hbm:wire_aluminium>, null],[<appliedenergistics2:material:16>, <appliedenergistics2:material:17>, <appliedenergistics2:material:18>], [null, <hbm:plate_copper>, null]]);
recipes.addShaped(<hbm:plate_polymer>, [[<hbm:ingot_polymer>, <hbm:ingot_polymer>, null],[null, null, null], [null, null, null]]);
recipes.addShaped(<hbm:inf_water>, [[<hbm:ingot_meteorite_forged>, <hbm:ingot_meteorite_forged>, <hbm:ingot_meteorite_forged>],[<hbm:ingot_meteorite_forged>, <projecte:item.pe_evertide_amulet>, <hbm:ingot_meteorite_forged>], [<hbm:ingot_meteorite_forged>, <hbm:ingot_meteorite_forged>, <hbm:ingot_meteorite_forged>]]);

