#loader reloadable
import crafttweaker.event.IEventCancelable;
import crafttweaker.events.IEventManager;
import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.damage.IDamageSource;

import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.player.IPlayer;
import crafttweaker.potions.IPotionEffect;
import scripts.func.logDebug;
import scripts.func.isHurtedEventEntity;

// 监听生物受到伤害的事件
events.onEntityLivingHurt(function(event as EntityLivingHurtEvent){
        var dmgsrc as IDamageSource = event.damageSource;
        if (!isNull(dmgsrc) && isHurtedEventEntity(event, "twilightforest:hydra")) {
            val entity as IEntityLivingBase = event.entityLivingBase;
            entity.addPotionEffect(<potion:minecraft:regeneration>.makePotionEffect(600, 2));
        }
});