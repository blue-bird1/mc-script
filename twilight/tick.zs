#loader crafttweaker reloadable
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.event.PlayerCraftedEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;



events.onPlayerTick(function(event as PlayerTickEvent){
    if(event.side != "SERVER" || event.phase != "END"){
        return;
    }
    val player = event.player;
    val dim = player.getDimension();
    if(dim != 7){
        return;
    }

    val data as IData = player.data;
    var count  = 0;
    
    if(data has 'twilight_tick'){
        count = data.twilight_tick;
    }

   // count += 1;
  //  if(count >= 20){
     //  count = 0;
    //   for armor in player.armorInventory{
      //     armor.damageItem(min(armor.maxDamage / 60, 1), player);
      // }
   // }

  //  val newmap as IData = {
     // twilight_tick: count
   // };

//    data.update(newmap);
    // logger.logInfo(toString(player.armorInventory));

});