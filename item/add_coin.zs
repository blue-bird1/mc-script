#priority 11
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

val emc_coin_10000 as Item = VanillaFactory.createItem("emc_coin_10000");
emc_coin_10000.rarity = "COMMON";
# emc_coin_100.creativeTab = <creativetab:tools>;
emc_coin_10000.glowing = true;
emc_coin_10000.register();

val emc_coin_100000 as Item = VanillaFactory.createItem("emc_coin_100000");
emc_coin_100000.rarity = "COMMON";
# emc_coin_100.creativeTab = <creativetab:tools>;
emc_coin_100000.glowing = true;
emc_coin_100000.register();


val small_emc_crystal as Item = VanillaFactory.createItem("small_emc_crystal");
small_emc_crystal.rarity = "COMMON";
small_emc_crystal.register();

val medium_emc_crystal as Item = VanillaFactory.createItem("medium_emc_crystal");
medium_emc_crystal.rarity = "UNCOMMON";
medium_emc_crystal.register();

val large_emc_crystal as Item = VanillaFactory.createItem("large_emc_crystal");
large_emc_crystal.rarity = "RARE";
large_emc_crystal.glowing = true;
large_emc_crystal.register();

val giant_emc_crystal as Item = VanillaFactory.createItem("giant_emc_crystal");
giant_emc_crystal.rarity = "EPIC";
giant_emc_crystal.glowing = true;
giant_emc_crystal.register();



