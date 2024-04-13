#loader reloadable
import crafttweaker.event.IEventCancelable;
import crafttweaker.events.IEventManager;
import crafttweaker.event.EntityLivingHurtEvent;

// 监听生物受到伤害的事件
events.onEntityLivingHurt(function(event as EntityLivingHurtEvent){
    // 检查事件是否是IEntityHurtEvent类型
    if (event instanceof EntityLivingHurtEvent) {
        val entityHurtEvent = event as EntityLivingHurtEvent;

        if (!isNull(entityHurtEvent.damageSource)) {
            // 检查伤害来源的名称是否为null
            if (!isNull(entityHurtEvent.damageSource.getImmediateSource()) && !isNull(entityHurtEvent.damageSource.getImmediateSource().definition)) {
                // 检查伤害来源的名称是否为null
                if (!isNull(entityHurtEvent.damageSource.getImmediateSource().definition.id)) {
                    // 打印伤害来源的名称
                    
                    // logger.logInfo(toString(entityHurtEvent.damageSource.getImmediateSource().definition.id));
                    // logger.logInfo(toString(entityHurtEvent.entityLivingBase.definition.id));
                    // 检查伤害来源是否是您想要修改的特定来源
                    if (entityHurtEvent.damageSource.getImmediateSource().definition.name == "entity_bullet_mk2") {
                    // 将伤害值乘以2
                        entityHurtEvent.amount = entityHurtEvent.amount * 2;
                        return;
                    }

                    if(entityHurtEvent.entityLivingBase.definition.id.startsWith("hbm:") && !entityHurtEvent.damageSource.getImmediateSource().definition.id.startsWith("hbm:") ){
                        entityHurtEvent.amount = entityHurtEvent.amount/2;
                        return;
                    }
                } else {
                    // 打印伤害来源的名称为null的日志信息
                    // logger.logInfo("伤害来源的名称为空。");
                }
            } else {
                // 打印空指针异常的日志信息
                if(isNull(entityHurtEvent.entityLivingBase)){
                    return;
                }
                if(entityHurtEvent.entityLivingBase.definition.id.startsWith("hbm:")){
                        entityHurtEvent.amount = entityHurtEvent.amount/2;
                        return;
                }
                // logger.logInfo(toString(entityHurtEvent.entityLivingBase.definition.id));
                // logger.logInfo("伤害来源、直接来源或定义为空。");
            }
        }else{
            // logger.logInfo("伤害来源为空。");
        }
    }
});