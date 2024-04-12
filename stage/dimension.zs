import mods.zenstages.ZenStager;
import mods.zenstages.Stage;



static  NetherStage as Stage = ZenStager.getStage("nether");

NetherStage.addDimension(-1);

static  EndStage as Stage = ZenStager.getStage("end");

EndStage.addDimension(1);

ZenStager.buildAll();