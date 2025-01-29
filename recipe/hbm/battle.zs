#reloadable

# 空瓶子
recipes.remove(<hbm:bottle_empty>);
recipes.addShaped(<hbm:bottle_empty>, [[null, <hbm:cap_nuka>, null],[<minecraft:glass_pane>, null, <minecraft:glass_pane>], [<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>]]);

# 装甲工作台
recipes.remove(<hbm:machine_armor_table>);
recipes.addShaped(<hbm:machine_armor_table>, [[<hbm:ingot_dura_steel>, <hbm:ingot_dura_steel>, <hbm:ingot_dura_steel>],[<hbm:plate_steel>, <minecraft:crafting_table>, <hbm:plate_steel>], [<hbm:plate_steel>, <hbm:block_steel>, <hbm:plate_steel>]]);
recipes.addShaped(<hbm:machine_armor_table>, [[<twilightforest:naga_scale>, <twilightforest:naga_scale>, <twilightforest:naga_scale>],[<hbm:plate_steel>, <minecraft:crafting_table>, <hbm:plate_steel>], [<hbm:plate_steel>, <hbm:block_steel>, <hbm:plate_steel>]]);