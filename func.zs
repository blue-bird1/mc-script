#loader crafttweaker reloadable
#priority 2
import crafttweaker.data.IData;
import crafttweaker.player.IPlayer;
import crafttweaker.world.IBiome;
import crafttweaker.world.IWorld;
import crafttweaker.world.IBlockPos;
import crafttweaker.event.EntityLivingHurtEvent;

function logDebug(msg as IData) as void {

     logger.logInfo(msg);
}

function checkPlayInBiome(player as IPlayer, biomeName as IData) as bool {
    val world as IWorld = player.world;
    val blockpos as IBlockPos  = player.position;
    val biome as IBiome  = world.getBiome(blockpos);
    return biome.name == biomeName;
}

function isHurtedEventEntity(event as EntityLivingHurtEvent, entityId as string) as bool {
    
        if(isNull(event.entityLivingBase) || isNull(event.entityLivingBase.definition)){
            return false;
        }

        return event.entityLivingBase.definition.id == entityId;
}
