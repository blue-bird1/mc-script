#priority 2
#reloadable
import crafttweaker.item.IItemStack;
static machineinery_batch_asssembler_time as int = 200;


static upgrades as IItemStack[][string] = {
    speed : [<hbm:upgrade_speed_1>, <hbm:upgrade_speed_2>, <hbm:upgrade_speed_3>],
    power : [<hbm:upgrade_power_1>, <hbm:upgrade_power_2>, <hbm:upgrade_power_3>],
    effect : [<hbm:upgrade_effect_1>, <hbm:upgrade_effect_2>, <hbm:upgrade_effect_3>],
    fortune : [<hbm:upgrade_fortune_1>, <hbm:upgrade_fortune_2>, <hbm:upgrade_fortune_3>],
    afterburn : [<hbm:upgrade_afterburn_1>, <hbm:upgrade_afterburn_2>, <hbm:upgrade_afterburn_3>],
    overdrive : [<hbm:upgrade_overdrive_1>, <hbm:upgrade_overdrive_2>, <hbm:upgrade_overdrive_3>],
    ejector : [<hbm:upgrade_ejector_1>, <hbm:upgrade_ejector_2>, <hbm:upgrade_ejector_3>],
    stack : [<hbm:upgrade_stack_1>, <hbm:upgrade_stack_2>, <hbm:upgrade_stack_3>]
};
