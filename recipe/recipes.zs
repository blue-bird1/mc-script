#reloadable
import crafttweaker.item.IItemStack;
val delete_list = [
    <minecraft:crafting_table>,
    <minecraft:book>,
    <minecraft:paper>,
    <minecraft:bread>,
    <modularmachinery:blockcasing>,
    <modularmachinery:blockcontroller>,
    <minecraft:furnace>,
    <minecraft:fishing_rod>,
    <minecraft:melon_seeds>,
   // <minecraft:pumpkin_seeds>,
    <minecraft:golden_apple>,
    <twilightforest:charm_of_life_2>,
    <threng:material:4>,
    <appliedenergistics2:inscriber>,
    <appliedenergistics2:charger>,
    <appliedenergistics2:part:220>,
    <appliedenergistics2:controller>,
    <appliedenergistics2:quartz_glass>,
    <appliedenergistics2:part:140>,
    <appliedenergistics2:material:44>,
    <appliedenergistics2:material:43>,
    <appliedenergistics2:material:52>, // 空白样板
    <appliedenergistics2:molecular_assembler>, // 分子装配室
    <appliedenergistics2:material:36>,
    <appliedenergistics2:material:37>,
    <appliedenergistics2:material:38>,
    <storagedrawers:upgrade_storage:*>,
    <storagedrawers:upgrade_template>,
    <hbm:factory_titanium_core>,
    <hbm:factory_titanium_hull>,
    <hbm:gun_revolver_nightmare>,
    <appliedenergistics2:crafting_accelerator>,
    <hbm:book_guide_book:1>

] as IItemStack[];
for item in delete_list {
    recipes.remove(item);
}



recipes.removeByMod("buildinggadgets");

recipes.removeByMod("touhou_little_maid");

recipes.removeByMod("projecte");

recipes.removeShapeless(<hbm:biomass> * 4, [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>]);
recipes.removeShapeless(<hbm:biomass> * 6, [<ore:logWood>, <ore:logWood>, <ore:logWood>]);
recipes.removeShapeless(<hbm:biomass> * 4, [<ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>]);


recipes.addShaped(<hbm:rbmk_outgasser>, [[<hbm:steel_grate>, <minecraft:hopper>, <hbm:steel_grate>],[<hbm:steel_grate>, <hbm:rbmk_blank>, <hbm:steel_grate>], [<hbm:steel_grate>, <ore:ingotAnyResistantAlloy>, <hbm:steel_grate>]]);
recipes.addShaped(<hbm:gun_revolver_nightmare>, [[null, null, null],[<hbm:plate_steel>, <hbm:powder_advanced_alloy>, <hbm:mechanism_revolver_2>], [null, <hbm:plate_aluminium>, <ore:plankWood>]]);
recipes.addShaped(<appliedenergistics2:crafting_accelerator>, [[null, <appliedenergistics2:part:16>, null],[<hbm:circuit_copper>, <appliedenergistics2:crafting_unit>, <hbm:circuit_copper>], [null, <appliedenergistics2:part:16>, null]]);
recipes.addShaped(<modularmachinery:blockparallelcontroller>, [[null, <appliedenergistics2:crafting_accelerator>, null],[<appliedenergistics2:crafting_accelerator>, <modularmachinery:blockcasing>, <appliedenergistics2:crafting_accelerator>], [null, <appliedenergistics2:crafting_accelerator>, null]]);

recipes.addShapeless(<storagedrawers:upgrade_template>, [<hbm:battery_generic>.withTag({charge: 5000 as long}).onlyWithTag({charge: 5000 as long}),<ore:drawerBasic>]);
recipes.addShapeless(<storagedrawers:upgrade_storage:4>, [<aeadditions:storage.component>,<storagedrawers:upgrade_template>]);
recipes.addShapeless(<storagedrawers:upgrade_storage:3>, [<appliedenergistics2:material:38>,<storagedrawers:upgrade_template>]);
recipes.addShapeless(<storagedrawers:upgrade_storage:2>, [<appliedenergistics2:material:37>,<storagedrawers:upgrade_template>]);
recipes.addShapeless(<storagedrawers:upgrade_storage:1>, [<appliedenergistics2:material:36>,<storagedrawers:upgrade_template>]);
recipes.addShapeless(<storagedrawers:upgrade_storage>, [<appliedenergistics2:material:35>,<storagedrawers:upgrade_template>]);



recipes.addShaped(<touhou_little_maid:smart_slab>, [[null, <twilightforest:transformation_powder>, null],[<twilightforest:zombie_scepter>, <minecraft:paper>, <minecraft:ender_pearl>], [null, <twilightforest:transformation_powder>, null]]);
recipes.addShaped(<touhou_little_maid:smart_slab>, [[null, <minecraft:ender_pearl>, null],[<touhou_little_maid:power_point>, <projecte:item.pe_philosophers_stone>, <touhou_little_maid:power_point>], [null, <minecraft:paper>, null]]);


recipes.addShaped(<projecte:item.pe_fuel>, [[<minecraft:coal>, <minecraft:coal>, <minecraft:coal>],[<minecraft:coal>, <projecte:item.pe_covalence_dust>, <minecraft:coal>], [<minecraft:coal>, <minecraft:coal>, <minecraft:coal>]]);
recipes.addShaped(<minecraft:furnace>, [[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],[<minecraft:cobblestone>, <projecte:item.pe_covalence_dust:1>, <minecraft:cobblestone>], [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]);
furnace.addRecipe(<appliedenergistics2:material:5>, <minecraft:quartz>, 0.0);
recipes.addShaped(<minecraft:book>, [[null, <minecraft:paper>, null],[<minecraft:leather>, <minecraft:slime_ball>, <minecraft:leather>], [null, <minecraft:paper>, null]]);
recipes.addShaped(<minecraft:paper>, [[null, <minecraft:reeds>, null],[<minecraft:reeds>, <minecraft:water_bucket>, <minecraft:reeds>], [null, <minecraft:reeds>, null]]);
recipes.addShapeless(<minecraft:crafting_table>, [<projecte:item.pe_covalence_dust>, <ore:plankWood>, <ore:plankWood>, <projecte:item.pe_covalence_dust>]);
recipes.addShaped(<contenttweaker:lava_ord>, [[<forge:bucketfilled>.withTag({FluidName: "fiery_essence", Amount: 1000}), <minecraft:lava_bucket>, <forge:bucketfilled>.withTag({FluidName: "fiery_essence", Amount: 1000})],[<minecraft:lava_bucket>, <projecte:item.pe_philosophers_stone>, <minecraft:lava_bucket>], [<forge:bucketfilled>.withTag({FluidName: "fiery_essence", Amount: 1000}) ,<minecraft:lava_bucket>, <forge:bucketfilled>.withTag({FluidName: "fiery_essence", Amount: 1000})]]);
recipes.addShaped(<contenttweaker:magic_stone_pickaxe>, [[null, <projecte:item.pe_covalence_dust>, null],[null, <minecraft:stone_pickaxe>, null], [null, null, null]]);
recipes.addShaped(<forge:bucketfilled>.withTag({FluidName: "fiery_essence", Amount: 1000}), [[<twilightforest:fiery_blood>, <twilightforest:fiery_blood>, <minecraft:bucket>],[<twilightforest:fiery_blood>, <twilightforest:fiery_blood>, null], [null, null, null]]);
recipes.addShaped(<minecraft:golden_apple>, [[null, <hbm:powder_gold>, null],[<forge:bucketfilled>.withTag({FluidName: "naga_blood", Amount: 1000}), <minecraft:apple>, <forge:bucketfilled>.withTag({FluidName: "fiery_essence", Amount: 1000})], [null, <hbm:powder_gold>, null]]);
recipes.addShaped(<twilightforest:charm_of_life_2>, [[null, null, null],[<minecraft:golden_apple:1>, <projecte:item.pe_philosophers_stone>, <twilightforest:charm_of_life_1>], [null, null, null]]);
recipes.addShaped(<twilightforest:charm_of_life_1>, [[null, null, null],[<twilightforest:transformation_powder>, <projecte:item.pe_philosophers_stone>, <minecraft:totem_of_undying>], [null, null, null]]);
recipes.addShaped(<minecraft:totem_of_undying>, [[null, <hbm:plate_iron>, null],[<minecraft:ender_pearl>, <projecte:item.pe_philosophers_stone>, <minecraft:ender_pearl>], [null, <minecraft:golden_apple>, null]]);


recipes.addShaped(<modularmachinery:blockcontroller>, [[null, <modularmachinery:blockcasing>, null],[<modularmachinery:blockcasing>, <projecte:item.pe_covalence_dust:1>, <modularmachinery:blockcasing>], [null, <modularmachinery:blockcasing>, null]]);
recipes.addShaped(<modularmachinery:blockcasing>, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],[<minecraft:iron_ingot>, <projecte:item.pe_covalence_dust>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);
recipes.addShaped(<modularmachinery:void_communicator_controller>, [[null, <projecte:item.pe_covalence_dust:1>, null],[<projecte:item.pe_covalence_dust:1>, <modularmachinery:blockcontroller>, <projecte:item.pe_covalence_dust:1>], [null, <projecte:item.pe_covalence_dust:1>, null]]);
recipes.addShaped(<modularmachinery:void_portal_controller>, [[null, <minecraft:ender_pearl>, null],[<minecraft:ender_pearl>, <modularmachinery:blockcontroller>, <minecraft:ender_pearl>], [null, <minecraft:ender_pearl>, null]]);
# 中型流体输出仓
recipes.addShapeless(<modularmachinery:blockfluidoutputhatch:2>, [ <modularmachinery:blockfluidinputhatch:2>]);
# 强化流体输出仓
recipes.addShapeless(<modularmachinery:blockfluidoutputhatch:3>, [<modularmachinery:blockfluidinputhatch:3>]);
# 大型流体输出仓
recipes.addShapeless(<modularmachinery:blockfluidoutputhatch:4>, [<modularmachinery:blockfluidinputhatch:4>]);
# 巨型流体输出仓
recipes.addShapeless(<modularmachinery:blockfluidoutputhatch:5>, [<modularmachinery:blockfluidinputhatch:5>]);
# 超级流体输出仓
recipes.addShapeless(<modularmachinery:blockfluidoutputhatch:6>, [<modularmachinery:blockfluidinputhatch:6>]);
# 真空流体输出仓
recipes.addShapeless(<modularmachinery:blockfluidoutputhatch:7>, [<modularmachinery:blockfluidinputhatch:7>]);

# 中型能源输出仓
recipes.addShapeless(<modularmachinery:blockenergyoutputhatch:2>, [<modularmachinery:blockenergyinputhatch:2>]);
# 强化能源输出仓
recipes.addShapeless(<modularmachinery:blockenergyoutputhatch:3>, [<modularmachinery:blockenergyinputhatch:3>]);
# 大型能源输出仓
recipes.addShapeless(<modularmachinery:blockenergyoutputhatch:4>, [<modularmachinery:blockenergyinputhatch:4>]);
# 巨型能源输出仓
recipes.addShapeless(<modularmachinery:blockenergyoutputhatch:5>, [<modularmachinery:blockenergyinputhatch:5>]);
# 超级能源输出仓
recipes.addShapeless(<modularmachinery:blockenergyoutputhatch:6>, [<modularmachinery:blockenergyinputhatch:6>]);

# 中型物品输出仓
recipes.addShapeless(<modularmachinery:blockoutputbus:2>, [<modularmachinery:blockinputbus:2>]);
# 强化物品输出仓
recipes.addShapeless(<modularmachinery:blockoutputbus:3>, [<modularmachinery:blockinputbus:3>]);
# 大型物品输出仓
recipes.addShapeless(<modularmachinery:blockoutputbus:4>, [<modularmachinery:blockinputbus:4>]);
# 巨型物品输出仓
recipes.addShapeless(<modularmachinery:blockoutputbus:5>, [<modularmachinery:blockinputbus:5>]);
# 超级物品输出仓
recipes.addShapeless(<modularmachinery:blockoutputbus:6>, [<modularmachinery:blockinputbus:6>]);


recipes.addShaped(<projecte:item.pe_ignition>, [[null, <projecte:item.pe_lava_orb>, null],[null, <projecte:item.pe_ring_iron_band>, null], [null, <projecte:item.pe_fuel:2>, null]]);


recipes.addShaped(<projecte:item.pe_fuel:2>, [[<projecte:item.pe_fuel:1>, <projecte:item.pe_fuel:1>, <projecte:item.pe_fuel:1>],[<projecte:item.pe_fuel:1>, <projecte:item.pe_philosophers_stone>, <projecte:item.pe_fuel:1>], [<projecte:item.pe_fuel:1>, <projecte:item.pe_fuel:1>, <projecte:item.pe_fuel:1>]]);
recipes.addShaped(<projecte:item.pe_fuel:1>, [[<projecte:item.pe_fuel>, <projecte:item.pe_fuel>, <projecte:item.pe_fuel>],[<projecte:item.pe_fuel>, <projecte:item.pe_philosophers_stone>, <projecte:item.pe_fuel>], [<projecte:item.pe_fuel>, <projecte:item.pe_fuel>, <projecte:item.pe_fuel>]]);


recipes.addShaped(<projecte:item.pe_water_orb>, [[<minecraft:water_bucket>, <minecraft:water_bucket>, <minecraft:water_bucket>],[<minecraft:water_bucket>, <projecte:item.pe_philosophers_stone>, <minecraft:water_bucket>], [<minecraft:water_bucket>, <minecraft:water_bucket>, <minecraft:water_bucket>]]);
recipes.addShaped(<projecte:item.pe_evertide_amulet>, [[<ore:ingotKnightmetal>, <projecte:item.pe_fuel:2>, <ore:ingotKnightmetal>],[<projecte:item.pe_fuel:2>, <projecte:item.pe_water_orb>, <projecte:item.pe_fuel:2>], [<ore:ingotKnightmetal>, <projecte:item.pe_fuel:2>, <ore:ingotKnightmetal>]]);


recipes.addShaped(<projecte:item.pe_lava_orb>, [[<contenttweaker:lava_ord>, <twilightforest:lamp_of_cinders>, <contenttweaker:lava_ord>],[<contenttweaker:lava_ord>, <projecte:item.pe_philosophers_stone>, <contenttweaker:lava_ord>], [<contenttweaker:lava_ord>, <contenttweaker:lava_ord>, <contenttweaker:lava_ord>]]);

recipes.addShaped(<projecte:alchemical_chest>, [[<projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust:1>, <projecte:item.pe_covalence_dust:2>],[<minecraft:ender_pearl>, <minecraft:chest>, <minecraft:ender_pearl>], [<minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>]]);
recipes.addShaped(<projecte:item.pe_alchemical_bag>, [[<projecte:item.pe_covalence_dust:2>, <projecte:item.pe_covalence_dust:2>, <projecte:item.pe_covalence_dust:2>],[<minecraft:wool>, <projecte:alchemical_chest>, <minecraft:wool>], [<minecraft:ender_pearl>, <minecraft:wool>, <minecraft:ender_pearl>]]);
recipes.addShaped(<projecte:item.pe_divining_rod_3>, [[<projecte:item.pe_covalence_dust:2>, <projecte:item.pe_covalence_dust:2>, <projecte:item.pe_covalence_dust:2>],[<projecte:item.pe_covalence_dust:2>, <projecte:item.pe_divining_rod_2>, <projecte:item.pe_covalence_dust:2>], [<projecte:item.pe_covalence_dust:2>, <projecte:item.pe_covalence_dust:2>, <projecte:item.pe_covalence_dust:2>]]);
recipes.addShaped(<projecte:item.pe_divining_rod_2>, [[<projecte:item.pe_covalence_dust:1>, <projecte:item.pe_covalence_dust:1>, <projecte:item.pe_covalence_dust:1>],[<projecte:item.pe_covalence_dust:1>, <projecte:item.pe_divining_rod_1>, <projecte:item.pe_covalence_dust:1>], [<projecte:item.pe_covalence_dust:1>, <projecte:item.pe_covalence_dust:1>, <projecte:item.pe_covalence_dust:1>]]);
recipes.addShaped(<projecte:item.pe_divining_rod_1>, [[null, <minecraft:ender_eye>, null],[<projecte:item.pe_covalence_dust>, <minecraft:stick>, <projecte:item.pe_covalence_dust>], [null, <minecraft:stick>, null]]);

recipes.addShaped(<projecte:item.pe_klein_star:1>, [[<projecte:item.pe_klein_star>, <twilightforest:block_storage>, <projecte:item.pe_klein_star>],[<twilightforest:block_storage>, <projecte:item.pe_klein_star>, <twilightforest:block_storage>], [<projecte:item.pe_klein_star>, <twilightforest:block_storage>, <projecte:item.pe_klein_star>]]);
recipes.addShaped(<projecte:item.pe_klein_star:2>, [[<projecte:item.pe_klein_star:1>, <twilightforest:knightmetal_block>, <projecte:item.pe_klein_star:1>],[<twilightforest:knightmetal_block>, <projecte:item.pe_klein_star:1>, <twilightforest:knightmetal_block>], [<projecte:item.pe_klein_star:1>, <twilightforest:knightmetal_block>, <projecte:item.pe_klein_star:1>]]);
recipes.addShaped(<projecte:item.pe_klein_star:3>, [[<projecte:item.pe_klein_star:2>, <twilightforest:block_storage:1>, <projecte:item.pe_klein_star:2>],[<twilightforest:block_storage:1>, <projecte:item.pe_klein_star:2>, <twilightforest:block_storage:1>], [<projecte:item.pe_klein_star:2>, <twilightforest:block_storage:1>, <projecte:item.pe_klein_star:2>]]);
recipes.addShaped(<projecte:item.pe_klein_star:5>, [[<projecte:item.pe_klein_star:4>, <projecte:matter_block:1>, <projecte:item.pe_klein_star:4>],[<projecte:matter_block:1>, <projecte:item.pe_klein_star:4>, <projecte:matter_block:1>], [<projecte:item.pe_klein_star:4>, <projecte:matter_block:1>, <projecte:item.pe_klein_star:4>]]);
recipes.addShaped(<projecte:item.pe_klein_star:4>, [[<projecte:item.pe_klein_star:3>, <projecte:matter_block>, <projecte:item.pe_klein_star:3>],[<projecte:matter_block>, <projecte:item.pe_klein_star:3>, <projecte:matter_block>], [<projecte:item.pe_klein_star:3>, <projecte:matter_block>, <projecte:item.pe_klein_star:3>]]);
recipes.addShaped(<projecte:item.pe_klein_star>, [[<projecte:item.pe_fuel:2>, <projecte:item.pe_alchemical_bag>, <projecte:item.pe_fuel:2>],[<projecte:item.pe_fuel:2>, <projecte:item.pe_philosophers_stone>, <projecte:item.pe_fuel:2>], [<projecte:item.pe_fuel:2>, <projecte:item.pe_fuel:2>, <projecte:item.pe_fuel:2>]]);
recipes.addShaped(<projecte:collector_mk1>, [[<projecte:fuel_block:2>, null , <projecte:fuel_block:2>],[null, <projecte:alchemical_chest>, null], [<projecte:fuel_block:2>, <projecte:item.pe_klein_star>, <projecte:fuel_block:2>]]);
recipes.addShaped(<projecte:transmutation_table>, [[null, <minecraft:stone_slab>, null],[null, <projecte:item.pe_philosophers_stone>, null], [null, <minecraft:writable_book>, null]]);
recipes.addShaped(<projecte:condenser_mk1>, [[null, <touhou_little_maid:smart_slab>, null],[<projecte:item.pe_klein_star>, <projecte:transmutation_table>, <projecte:item.pe_klein_star>], [null, <projecte:alchemical_chest>, null]]);
recipes.addShaped(<projecte:relay_mk3>, [[null, <projecte:relay_mk2>, null],[<projecte:relay_mk2>, <projecte:item.pe_klein_star:5>, <projecte:relay_mk2>], [null, <projecte:relay_mk2>, null]]);
recipes.addShaped(<projecte:relay_mk2>, [[null, <projecte:relay_mk1>, null],[<projecte:relay_mk1>, <projecte:item.pe_klein_star:4>, <projecte:relay_mk1>], [null, <projecte:relay_mk1>, null]]);
recipes.addShaped(<projecte:relay_mk1>, [[null, <projecte:collector_mk3>, null],[<projecte:collector_mk3>, <projecte:item.pe_klein_star:3>, <projecte:collector_mk3>], [null, <projecte:collector_mk3>, null]]);
recipes.addShaped(<projecte:collector_mk3>, [[null, <projecte:collector_mk2>, null],[<projecte:collector_mk2>, <projecte:item.pe_klein_star:2>, <projecte:collector_mk2>], [null, <projecte:collector_mk2>, null]]);
recipes.addShaped(<projecte:collector_mk2>, [[null, <projecte:collector_mk1>, null],[<projecte:collector_mk1>, <projecte:item.pe_klein_star:1>, <projecte:collector_mk1>], [null, <projecte:collector_mk3>, null]]);


recipes.addShaped(<appliedenergistics2:material:44>, [[<hbm:circuit_copper>, <appliedenergistics2:material:1>, <hbm:ingot_meteorite_forged>],[null, null, null], [null, null, null]]);

recipes.addShaped(<appliedenergistics2:material:43>, [[<hbm:circuit_copper>, <ore:crystalPureCertusQuartz>, <hbm:ingot_meteorite_forged>],[null, null, null], [null, null, null]]);

# 网络工具
recipes.addShaped(<appliedenergistics2:network_tool>, [[<appliedenergistics2:material:1>, null, null],[null, <hbm:wrench>, null], [null, null, <hbm:circuit_copper>]]);

# 空白样板
recipes.addShaped(<appliedenergistics2:material:52>, [[<appliedenergistics2:quartz_glass>, <appliedenergistics2:material:2>, <appliedenergistics2:quartz_glass>],[<appliedenergistics2:material:2>, <appliedenergistics2:material:35>, <appliedenergistics2:material:2>], [<hbm:ingot_steel>, <hbm:ingot_steel>, <hbm:ingot_steel>]]);


furnace.remove(<threng:material>);
furnace.remove(<appliedenergistics2:material:5>, <appliedenergistics2:material:3>);