#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
val lavaord as Item = VanillaFactory.createItem("lava_ord");
lavaord.rarity = "COMMON";
# emc_coin_100.creativeTab = <creativetab:tools>;
lavaord.register();