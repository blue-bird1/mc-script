#loader crafttweaker reloadable
#priority 2
import crafttweaker.data.IData;
import crafttweaker.player.IPlayer;
import crafttweaker.world.IBiome;

function logDebug(msg as IData){

     logger.logInfo(msg);
}

function checkPlayInBiome(player as IPlayer, biomeName as IData) as bool {
    val world = player.world;
    val blockpos = player.position;
    val biome as IBiome  = world.getBiome(blockpos);
    return biome.name == biomeName;
}
