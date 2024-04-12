#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IResourceLocationSupplier;

var instance = mods.contenttweaker.ResourceLocation.create("contenttweaker:items/book");
val iron_book as Item = VanillaFactory.createItem("iron_book");
val redstone_book as Item = VanillaFactory.createItem("redstone_book");
val alchemy_book as Item = VanillaFactory.createItem("alchemy_book");

val item_array = [
    iron_book,
    redstone_book,
    alchemy_book
] as Item[];

for item in item_array{
    item.rarity = "RARE";
    item.glowing = true;
    item.textureLocation = instance;
    item.register();
}

