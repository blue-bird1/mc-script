#loader reloadable
import crafttweaker.event.IEventCancelable;
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerRightClickItemEvent;

// events.onPlayerRightClickItem(function(event as PlayerRightClickItemEvent){
//     val item = event.item;
//     val player = event.player;
//     if(item.definition.id == "hbm:syringe_metal_empty"){
//        event.damageItem(1);
//        player.give(<hbm:syringe_metal_stimpak>);
//        player.health -= 10;
//     }
// });