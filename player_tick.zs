#loader crafttweaker reloadable
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.event.PlayerCraftedEvent;
import crafttweaker.player.IPlayer;

var dim_map as string[string] = {
};


function getModId(id as string) as string {
    return id.split(":")[0];
}

function getPlayerCurrentItemId(player as IPlayer) as string {
    return player.currentItem.definition.id;
}


function getPlayeroffHandHeldItemId(player as IPlayer) as string {
    return player.offHandHeldItem.definition.id;
}

events.onPlayerTick(function(event as PlayerTickEvent){
    if(event.side != "SERVER" || event.phase != "END"){
        return;
    }
    val player = event.player;
    val dim = player.getDimension();
    if(dim == 0){
        return;
    }

});

# events.onPlayerCrafted(function(event as PlayerCraftedEvent){
#    val player = event.player;
#    val dim = player.getDimension();
#    logger.logInfo(toString(player.activeItemStack));
#    logger.logInfo(toString(player.offHandHeldItem));
# });


