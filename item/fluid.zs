#loader contenttweaker 
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

var naga_blood as Fluid = mods.contenttweaker.VanillaFactory.createFluid("naga_blood",Color.fromHex("325D25"));

naga_blood.register();