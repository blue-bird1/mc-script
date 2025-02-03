#reloadable
import crafttweaker.event.IEventCancelable;
import crafttweaker.events.IEventManager;
import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.damage.IDamageSource;

import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.player.IPlayer;
import crafttweaker.potions.IPotionEffect;

import crafttweaker.event.EntityLivingDamageEvent;
// 监听生物受到伤害的事件
events.onEntityLivingHurt(function(event as EntityLivingHurtEvent){
    // 检查事件是否是IEntityHurtEvent类型
        val entityHurtEvent as EntityLivingHurtEvent  = event ;
        if(isNull(entityHurtEvent.entityLivingBase) || isNull(entityHurtEvent.entityLivingBase.definition)){
          //  logger.logInfo("not found hurt entity");
            return;
        }
        var dmgsrc as IDamageSource = entityHurtEvent.damageSource;
        // if dmgsrc is null return
        if(!isNull(dmgsrc) && dmgsrc.isMagicDamage() && dmgsrc.isExplosion()){
                return;
        }
        var entity as IEntityLivingBase = event.entityLivingBase;
        
            // 检查伤害来源的名称是否为null
        if (!isNull(dmgsrc) && !isNull(dmgsrc.getImmediateSource()) && !isNull(dmgsrc.getImmediateSource().definition)) {

               
                // 检查伤害来源的名称是否为null
                if (!isNull(entityHurtEvent.damageSource.getImmediateSource().definition.id)) {
                    // 打印伤害来源的名称
                    
                    logger.logInfo(toString(entityHurtEvent.damageSource.getImmediateSource().definition.id));
                    // logger.logInfo(toString(entityHurtEvent.entityLivingBase.definition.id));
                    // 检查伤害来源是否是您想要修改的特定来源
                    if (entityHurtEvent.damageSource.getImmediateSource().definition.name == "entity_bullet_mk2") {
                    // 将伤害值乘以2
                        entityHurtEvent.amount = entityHurtEvent.amount * 2;
                        return;
                    }

                    if(entityHurtEvent.entityLivingBase.definition.id.startsWith("hbm:") && !dmgsrc.getImmediateSource().definition.id.startsWith("hbm:") ){
                        entityHurtEvent.amount = entityHurtEvent.amount/2;
                        return;
                    }
                    return;
                } else {
                    // 打印伤害来源的名称为null的日志信息
                    // logger.logInfo("伤害来源的名称为空。");
                    return;
                }
        } else if(!isNull(dmgsrc.getTrueSource())){
                // && !(dmgsrc.getTrueSource() instanceof IPlayer)
                 var trueSource as IEntityLivingBase = dmgsrc.getTrueSource();
           //    if(trueSource.definition.id == "twilightforest:yeti_alpha" && entity instanceof IPlayer){
           //         logger.logInfo("伤害来源。");
           //         var postion  as IPotionEffect = entity.getActivePotionEffect(<potion:twilightforest:frosted>);
           //         if(postion.amplifier <= 9){
           //             entity.removePotionEffect(<potion:twilightforest:frosted>);
           //             entity. addPotionEffect(<potion:twilightforest:frosted>.makePotionEffect(postion.duration+60, postion.amplifier+1));
           //         }else{
           //             entity.attackEntityFrom(crafttweaker.damage.IDamageSource.createMobDamage(trueSource), 5);
           //         }
           //    }
                 
        }
        if(isNull(entityHurtEvent.entityLivingBase.definition)){
                    return;
        }

        if(entityHurtEvent.entityLivingBase.definition.id.startsWith("hbm:")){
                        entityHurtEvent.amount = entityHurtEvent.amount/2;
                        return;
        }

        if(entityHurtEvent.entityLivingBase.definition.id.startsWith("twilightforest:")){
                        entityHurtEvent.amount = entityHurtEvent.amount*0.25;
                        return;
        }
});