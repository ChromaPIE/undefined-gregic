#priority 1999
#loader contenttweaker

import mods.contenttweaker.ResourceLocation;
import scripts.crmpfunc.cotFunc.blockBoss;

var bArray = ["b_lv","b_mv","b_hv","b_ev","b_iv","b_luv","b_zpm","b_uv"] as string[];

for bblocks in bArray{
	blockBoss(bblocks, <blockmaterial:iron>, <soundtype:metal>, 5.0, 50.0, "pickaxe", 0);
	ResourceLocation.create("contenttweaker:"~bblocks~"/"~bblocks);
}
