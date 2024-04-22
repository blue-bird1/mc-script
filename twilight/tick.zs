#loader crafttweaker reloadable
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.event.PlayerCraftedEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;
import crafttweaker.world.IBiome;
import crafttweaker.damage.IDamageSource;
import scripts.func.logDebug;
import scripts.func.checkPlayInBiome;
import mods.ntm.Rad;

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
    var twilight_swamp_tick  = 0;
    
    if(data has 'twilight_tick'){
         count = data.twilight_tick as int;
    }

    if(data has 'twilight_swamp_tick'){
        twilight_swamp_tick  = data.twilight_swamp_tick as int;
    }

    count += 1;
    if(count >= 20){
       count = 0;
       if(checkPlayInBiome(player,"Twilight Glacier")){
          var ok = true;
          for armor in player.armorInventory{
              if(isNull(armor) || !armor.definition.id.startsWith("twilightforest:yeti")){
                ok = false;
              }
          }
          if(!ok){
             logDebug("give a position");
             player.addPotionEffect(<potion:twilightforest:frosted>.makePotionEffect(60, 4));
          }
       }

       if(checkPlayInBiome(player,"Twilight Swamp")){
            twilight_swamp_tick += 1;
            if(twilight_swamp_tick >= 300){
                player.attackEntityFrom(IDamageSource.createOfType("HIGH_TEMPER"),20);
            }

       }else{
           twilight_swamp_tick = 0;
       }

       if(checkPlayInBiome(player,"Dark Forest Center")){
          Rad.addRad(player, 50);
       }

       for armor in player.armorInventory{
            if(!isNull(armor) &&!armor.definition.id.startsWith("twilightforest:") ){
                armor.mutable().damageItem(max(armor.maxDamage / 60, 1), player);
            }
       }
    }
   //  logger.logInfo(count);
    val newmap as IData = {
      twilight_tick: count,
      twilight_swamp_tick: twilight_swamp_tick 
    };

    player.update(newmap);
    // logger.logInfo(toString(player.armorInventory));

});
