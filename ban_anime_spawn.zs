#loader crafttweaker reloadable
import crafttweaker.event.EntityLivingSpawnEvent;
import crafttweaker.events.IEventManager;
import crafttweaker.data.IData;
import crafttweaker.entity.IEntityAnimal;
import crafttweaker.entity.IEntityMob;
import crafttweaker.event.EntityLivingExtendedSpawnEvent;
import crafttweaker.event.EntityJoinWorldEvent;
import crafttweaker.event.EntityLivingDeathEvent;
import crafttweaker.world.IBlockPos;
import crafttweaker.util.Position3f;

events.onEntityJoinWorld(function(event as EntityJoinWorldEvent){
    var entity = event.entity;
    val world = entity.world;
    if(world.isRemote() || !entity.isAlive() ){
      return;
    }
    var nbt = entity.getNBT();
    val pos = [entity.position.getX(),entity.position.getY(),entity.position.getZ()] as IData;
    val addnbt as IData = {"JoinPos": pos };
    # nbt = nbt.update(addnbt);
    entity.setNBT(addnbt);
    return;
});

events.onEntityLivingDeath(function(event as EntityLivingDeathEvent) {
    val entity = event.entityLivingBase;
    val world = entity.world;
    if(world.isRemote()){
      return;
    }
    val position = entity.getNBT().ForgeData.JoinPos;
    if(isNull(position) || !position.length == 3){
      logger.logError("death entiey postion is null");
      logger.logError(toString(position));
      return;
    }
    val joinPos = crafttweaker.util.Position3f.create(position[0], position[1], position[2]).asBlockPos();

    val chunkdata = world.getCustomChunkData(joinPos);

    if(entity instanceof IEntityAnimal){
       var animalNum = chunkdata.animalNum as IData;
       if(isNull(animalNum)){
         animalNum = 0 as IData  ;
       }
       animalNum += 1 ;
       val updateMap as IData = {
	         animalNum  : animalNum 
       };
       world.updateCustomChunkData(updateMap, joinPos);
    }
    if(entity instanceof IEntityMob){
       var mobNum = chunkdata.mobNum as IData;
       if(isNull(mobNum)){
         mobNum = 0 as IData  ;
       }
       mobNum += 1 ;
       val updateMap as IData = {
	         mobNum  : mobNum 
       };
      world.updateCustomChunkData(updateMap, joinPos);
    }
});

events.onCheckSpawn(function(event as EntityLivingExtendedSpawnEvent) {
    val world = event.world;
    val entity = event.entity;
    if(world.isRemote() || !entity.isAlive()){
      return;
    }
    val position = entity.position;
    val chunkdata = world.getCustomChunkData(position);

    if(entity instanceof IEntityAnimal){
       var animalNum = chunkdata.animalNum as IData;
       if(isNull(animalNum)){
         animalNum = 0 as IData  ;
       }
       if(animalNum >= 8){
        event.deny();
        return;
       }
    }
    if(entity instanceof IEntityMob){
       var mobNum = chunkdata.mobNum as IData;
       if(isNull(mobNum)){
         mobNum = 0 as IData  ;
       }
       if(mobNum >= 16){
        event.deny();
        return;
       }
    }
    event.pass();
});

