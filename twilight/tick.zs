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
    var count   = 0 ;
    
   if(data has 'twilight_tick'){
         logger.logInfo('hava data');
         count = data.twilight_tick as int;
    }

    count += 1;
    if(count >= 20){
       logger.logInfo("1s");
       count = 0;
       for armor in player.armorInventory{
           // ar
            armor.mutable().damageItem(max(armor.maxDamage / 60, 1), player);
           // armor.damageItem(min(armor.maxDamage / 60, 1), player);
       }
    }
   //  logger.logInfo(count);
    val newmap as IData = {
      twilight_tick: count
    };

    player.update(newmap);
    // logger.logInfo(toString(player.armorInventory));

});