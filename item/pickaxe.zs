#priority 10
#loader contenttweaker 
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.player.IPlayer;
import mods.contenttweaker.Player;

val magic_stone_pickaxe as Item = VanillaFactory.createItem("magic_stone_pickaxe");
magic_stone_pickaxe.maxDamage = 8888;
magic_stone_pickaxe.rarity = "rare";
magic_stone_pickaxe.creativeTab = <creativetab:tools>;
magic_stone_pickaxe.toolClass = "pickaxe";
magic_stone_pickaxe.toolLevel = 1;

magic_stone_pickaxe.itemDestroyedBlock = function(stack,world,blockState,pos,entity as IEntityLivingBase){
   print("destory");
   if(entity instanceof IPlayer){
      val player as IPlayer  = entity;
      player.personalEMC += 1;
      stack.damage(1, player);
   }
   return true;
};
magic_stone_pickaxe.register();



