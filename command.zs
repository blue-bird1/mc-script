#loader crafttweaker reloadable
import mods.zenutils.command.ZenCommand;
import mods.zenutils.command.CommandUtils;
import mods.zenutils.command.IGetTabCompletion;

val chunkdata as ZenCommand = ZenCommand.create("chunkdata");
chunkdata.getCommandUsage = function(sender) {
    return "/chunkdata "; // return localization key
};
chunkdata.requiredPermissionLevel = 0; // require no permission, everyone can execute the command.
chunkdata.execute = function(command, server, sender, args) {
    // Send a status message to player that executes the message
    if (args.length == 0) {
        val player = CommandUtils.getCommandSenderAsPlayer(sender);
        val position = player.position;
        val world = player.world;
        val chunkdata = world.getCustomChunkData(position);
        player.sendChat(toString(chunkdata));
    } else {
        CommandUtils.notifyWrongUsage(command, sender);
    }
};
chunkdata.register();

val clearchunkdata as ZenCommand = ZenCommand.create("clearChunkData");
clearchunkdata.getCommandUsage = function(sender) {
    return "/clearChunkData "; // return localization key
};
clearchunkdata.requiredPermissionLevel = 0; // require no permission, everyone can execute the command.
clearchunkdata.execute = function(command, server, sender, args) {
    // Send a status message to player that executes the message
    if (args.length == 0) {
        val player = CommandUtils.getCommandSenderAsPlayer(sender);
        val position = player.position;
        val world = player.world;
        val updateMap = {
	         
        };
        world.setCustomChunkData(updateMap, position);
        player.sendChat("已清除当前区块数据");
    } else {
        CommandUtils.notifyWrongUsage(command, sender);
    }
};
clearchunkdata.register();





var getPlayData as ZenCommand = ZenCommand.create("getPlayData");
getPlayData.getCommandUsage = function(sender) {
    return "/getPlayData"; // return localization key
};
getPlayData.requiredPermissionLevel = 0; // require no permission, everyone can execute the command.
getPlayData.execute = function(command, server, sender, args) {
    // Send a status message to player that executes the message
    if (args.length == 0) {
        val player = CommandUtils.getCommandSenderAsPlayer(sender);
        player.sendChat(toString(player.data));
    } else {
        CommandUtils.notifyWrongUsage(command, sender);
    }
};
getPlayData.register();