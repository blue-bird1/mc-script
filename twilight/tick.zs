#loader crafttweaker reloadable
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.event.PlayerCraftedEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;
import crafttweaker.world.IBiome;
import scripts.func.logDebug;

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
         count = data.twilight_tick as int;
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
       for armor in player.armorInventory{
            if(!isNull(armor) &&!armor.definition.id.startsWith("twilightforest:") ){
                armor.mutable().damageItem(max(armor.maxDamage / 60, 1), player);
            }
       }
    }
   //  logger.logInfo(count);
    val newmap as IData = {
      twilight_tick: count
    };

    player.update(newmap);
    // logger.logInfo(toString(player.armorInventory));

});


function checkPlayInBiome(player as IPlayer, biomeName as IData) as bool {
    val world = crafttweaker.world.IWorld.getFromID(7);
    val blockpos = player.position;
    val biome as IBiome  = world.getBiome(blockpos);
    return biome.name == biomeName;
}
