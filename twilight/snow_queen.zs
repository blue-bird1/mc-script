#reloadable
import crafttweaker.event.IEventCancelable;
import crafttweaker.events.IEventManager;
import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.damage.IDamageSource;

import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.player.IPlayer;
import crafttweaker.potions.IPotionEffect;
import scripts.func.logDebug;
import scripts.func.isHurtedEventEntity;
import scripts.twilight.const.snow_queen;


// 监听生物受到伤害的事件
events.onEntityLivingHurt(function(event as EntityLivingHurtEvent){
        var dmgsrc as IDamageSource = event.damageSource;
        var entity as IEntityLivingBase = event.entityLivingBase;
        if (!isNull(dmgsrc) && isHurtedEventEntity(event, snow_queen)) {
            if(!dmgsrc.isFireDamage() && !dmgsrc.isMagicDamage() && !dmgsrc.isExplosion()){
                event.cancel();
            }
        }
});