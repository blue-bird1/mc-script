//#Remove
recipes.remove(<modularmachinery:blockcasing>);
recipes.remove(<modularmachinery:blockcontroller>);
//Don't touch me!
//#Add

recipes.addShaped(<modularmachinery:blockcontroller>, [[null, <modularmachinery:blockcasing>, null],[<modularmachinery:blockcasing>, <projecte:item.pe_covalence_dust:1>, <modularmachinery:blockcasing>], [null, <modularmachinery:blockcasing>, null]]);
recipes.addShaped(<modularmachinery:blockcasing>, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],[<minecraft:iron_ingot>, <projecte:item.pe_covalence_dust>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);
recipes.addShaped(<modularmachinery:void_communicator_controller>, [[null, <projecte:item.pe_covalence_dust:1>, null],[<projecte:item.pe_covalence_dust:1>, <modularmachinery:blockcontroller>, <projecte:item.pe_covalence_dust:1>], [null, <projecte:item.pe_covalence_dust:1>, null]]);
recipes.addShaped(<modularmachinery:void_portal_controller>, [[null, <minecraft:ender_pearl>, null],[<minecraft:ender_pearl>, <modularmachinery:blockcontroller>, <minecraft:ender_pearl>], [null, <minecraft:ender_pearl>, null]]);
