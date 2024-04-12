#loader crafttweaker reloadable

import mods.contenttweaker.ActionResult;
import crafttweaker.data.IData;

// get the CoT item and set function
<cotItem:small_emc_crystal>.itemRightClick = function(stack, world, player, hand) {

   stack.shrink(1);
   var add_emc = min(((player.personalEMC/100) as IData).asInt(), 10000);
   if(add_emc <100){
      add_emc = 100;
   }
   player.personalEMC += add_emc;

   return "Pass";
};

<cotItem:small_emc_crystal>.setLocalizedNameSupplier(function(itemStack) {
	return "小型emc水晶";
});