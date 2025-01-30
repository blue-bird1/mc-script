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


static TWILIGHT_SWAMP as string = "Twilight Swamp";
static FIRE_SWAMP as string  = "Fire Swamp";
static HIGH_TEMPER  as string  = "HIGH_TEMPER";
static HYDRA_STAGE  as string  = "hydra";
static HIGH_TEMPER_MSG as string = "口干舌燥，身体发热，感觉离死不远了";
static TWILIGHT_TICK_KEY as string = "twilight_tick";
static TWILIGHT_SWAMP_TICK_KEY as string = "twilight_swamp_tick";

events.onPlayerTick(function(event as PlayerTickEvent){
    if(event.side != "SERVER" || event.phase != "END"){
        return;
    }
    val player as IPlayer = event.player;
    val dim = player.getDimension();
    if(dim != 7){
        return;
    }

    val data as IData = player.data;
    var count   = 0 ;
    var twilight_swamp_tick  = 0;
    
    if(data has TWILIGHT_TICK_KEY ){
         count = data.twilight_tick as int;
    }

    if(data has TWILIGHT_SWAMP_TICK_KEY ){
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
             player.addPotionEffect(<potion:twilightforest:frosted>.makePotionEffect(60, 4));
          }
       }

       if(!player.hasGameStage(HYDRA_STAGE)){
            if(checkPlayInBiome(player, TWILIGHT_SWAMP) || checkPlayInBiome(player, FIRE_SWAMP)){
                twilight_swamp_tick += 1;
                if(twilight_swamp_tick >= 200 && twilight_swamp_tick % 30 == 0 && twilight_swamp_tick < 300){
                    player.sendChat(HIGH_TEMPER_MSG);
                }
                if(twilight_swamp_tick >= 300){
                    player.attackEntityFrom(IDamageSource.createOfType(HIGH_TEMPER), 20);
                }
            }else{
                twilight_swamp_tick = 0;
            }
       }

       if(checkPlayInBiome(player,"Dark Forest Center")){
          Rad.addRad(player, 50);
       }

       # 如果不使用暮色或者原版盔甲，会被腐蚀
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
