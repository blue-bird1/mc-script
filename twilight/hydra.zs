#loader reloadable
import crafttweaker.event.IEventCancelable;
import crafttweaker.events.IEventManager;
import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.damage.IDamageSource;

import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.player.IPlayer;
import crafttweaker.potions.IPotionEffect;
import scripts.func.logDebug;


// 监听生物受到伤害的事件
events.onEntityLivingHurt(function(event as EntityLivingHurtEvent){
        val entityHurtEvent = event as EntityLivingHurtEvent;
        if(isNull(entityHurtEvent.entityLivingBase) || isNull(entityHurtEvent.entityLivingBase.definition)){
            return;
        }
        var dmgsrc as IDamageSource = entityHurtEvent.damageSource;
        var entity as IEntityLivingBase = event.entityLivingBase;
        if (!isNull(dmgsrc)) {
            if(entity.definition.id.startsWith("twilightforest:hydra")){
                entity.addPotionEffect(<potion:minecraft:regeneration>.makePotionEffect(600, 2));
            }
        }
});