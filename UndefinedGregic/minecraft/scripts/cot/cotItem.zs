#priority 2000

#loader contenttweaker

//导包
	import mods.contenttweaker.VanillaFactory;
	import mods.contenttweaker.Item;
	import mods.contenttweaker.IItemRightClick;
	import mods.contenttweaker.Commands;
	import mods.contenttweaker.Fluid;
	import mods.contenttweaker.Color;
	import mods.contenttweaker.MaterialSystem;
	import mods.contenttweaker.Material;

//物品列表
var items as string[] = [
	"good_c",
	"extreme_c",
	"master_c",
	"emcoin",
	"endercluster",
	"empty_spray",
	"pestle_head",
	"plate_obsidian",
	"al_p_brk",
	"ag_p_brk",
	"au_p_brk",
	"obs_p_brk",
	"cu_p_brk",
	"fe_p_brk",
	"pb_p_brk",
	"ni_p_brk",
	"sn_p_brk",
	"hardened_gold_ingot",
	"c_coil",
	"conductive_chrome",
	"conductive_chrome_nugget",
	"conductive_chrome_ball",
	"binder",
	"fluxed_elec",
	"fluxed_elec_stick",
	"dust_lapotron",
	"wafer_esilver",
];

//物品注册
for item in items{
	VanillaFactory.createItem(item).register();
}

val infic = VanillaFactory.createItem("infinite_c");
infic.maxStackSize = 1;
infic.register();

val ultic = VanillaFactory.createItem("superconductor_c");
ultic.maxStackSize = 1;
ultic.register();
