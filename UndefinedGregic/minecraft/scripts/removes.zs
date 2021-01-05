#priority -3000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.recipes.ICraftingRecipe;
import crafttweaker.recipes.ICraftingInventory;

val eio = "enderio:";
val mm = "modularmachinery:";
val tf = "thermalfoundation:";
val gt = "gregtech:";
val aa = "actuallyadditions:recipes";
val mek = "mekanism:";

val removename = [
    //eio
        eio+"conduit_endergy_tier_1",
        eio+"conduit_endergy_tier_2_upgrade",
        eio+"conduit_endergy_tier_3_upgrade",
        eio+"conduit_endergy_aluminium",
        eio+"conduit_endergy_electrum",
        eio+"conduit_endergy_energetic_silver",
        eio+"transceiver",
        eio+"dark_hand",
        eio+"gear_stone",
        eio+"gear_stone_upgrade",
        eio+"cake",
    //mm
        mm+"controller",
        mm+"item_input_tiny",
        mm+"item_output_tiny",
        mm+"casing_reinforced",
        mm+"modularium_ingot",
        mm+"casing_plain",
    //tf
        tf+"dust_lumium",
        tf+"dust_signalum",
        tf+"dust_enderium",
        tf+"material_1",
        tf+"material_2",
        tf+"material",
        tf+"coal",
        tf+"storage_resource",
        tf+"material_15",
        tf+"material_45",
        tf+"storage_alloy_3",
        tf+"material_64",
        tf+"dust_cryotheum",
        tf+"dust_pyrotheum",
    //gt
        gt+"coated_board",
        gt+"dust_cupronickel",
        gt+"dust_brass",
        gt+"dust_rose_gold",
        gt+"dust_sterling_silver",
        gt+"dust_black_bronze",
        gt+"dust_bismuth_bronze",
        gt+"dust_yttrium_barium_cuprate",
        gt+"dust_black_steel",
        gt+"dust_blue_steel",
        gt+"dust_red_steel",
        gt+"dust_cobalt_brass",
        gt+"dust_tiny_cobalt_brass",
        gt+"dust_ferrite_mixture",
        gt+"dust_invar",
        gt+"dust_kanthal",
        gt+"dust_electrum",
        gt+"dust_stainless_steel",
        gt+"sword_flint",
        gt+"knife_flint",
        gt+"gravel_to_flint",
        gt+"bone_to_bone_meal",
        gt+"blaze_rod_to_powder",
        gt+"paper_dust",
        gt+"sugar",
    //aa
        aa+"83",
        aa+"117",
        aa+"118",
        aa+"154",
        aa+"155",
        aa+"182",
        aa+"188",
        aa+"194",
        aa+"200",
        aa+"206",
        aa+"212",
    //mek
        mek+"basicblock_3",
        mek+"basicblock_1",
        mek+"basicblock_8",
        mek+"machineblock3_6",
        mek+"machineblock3_5",
        mek+"machineblock_0",
        mek+"machineblock_12",
        mek+"transmitter_0_alt",
        mek+"transmitter_0_alt_alt",
    "air_support:recipe_circuit_board",
    "fluiddrawers:tank",
    "randomthings:enderbucket",
    "valkyrielib:modifier_component",
    "gtadditions:ga_multi_furnace",
    "gtadditions:ga_large_circuit_assembly",
    "gtadditions:ga_assline",
    "tesseract:tesseract",
    "rftools:machine_frame",
    "futureminecraf:netheriteingotrecipe",
    "futureminecraf:campfirerecipe",
    "futureminecraf:oldcampfirerecipe",
    "futureminecraf:soulcampfirerecipe",
    "futureminecraf:soulcampfirerecipe2",
    "campfire:campfire_recipe",
    "mechanics:heavy_mesh",
    "thermalexpansion:machine_4",
    "thermalexpansion:machine_5",
    "thermalexpansion:augment_9",
    "threng:steel_process_dust",
    "gtadditions:quartz_sand",
    "randomthings:plate_itemsealer",
] as string[];

for names in removename{
    recipes.removeByRecipeName(names);
}

val removeregex = [
    "^((?!ore).)*_to_dust((?!ore).)*$",
    "^(?=.*?gregtech:)(?=.*?mortar_grind_).+$",
    "^(?=.*?gregtech:)(?=.*?fluid_import_hatch_).+$",
    "^(?=.*?gregtech:)(?=.*?fluid_export_hatch_).+$",
    "^(?=.*?gregtech:)(?=.*?item_import_bus_).+$",
    "^(?=.*?gregtech:)(?=.*?item_export_bus_).+$",
    "^(?=.*?gtadditions:)(?=.*?fluid_export_hatch_).+$",
    "^(?=.*?enderio:)(?=.*?deco_block).+$",
] as string[];

for regexs in removeregex{
    recipes.removeByRegex(regexs);
}

val machineDef = <gregtech:machine>.definition;
    for i in 2900 to 2972{
        recipes.remove(machineDef.makeStack(i));
    }
    for i in 500 to 510{
        recipes.remove(machineDef.makeStack(i));
    }

val removeoutput = [
    <gregtech:meta_item_1:32600>,
    <gregtech:meta_item_1:32601>,
    <gregtech:meta_item_1:32602>,
    <gregtech:meta_item_1:32603>,
    <gregtech:meta_item_1:32604>,

    <gregtech:meta_item_1:32610>,
    <gregtech:meta_item_1:32611>,
    <gregtech:meta_item_1:32612>,
    <gregtech:meta_item_1:32613>,
    <gregtech:meta_item_1:32614>,

    <gregtech:meta_item_1:32630>,
    <gregtech:meta_item_1:32631>,
    <gregtech:meta_item_1:32632>,
    <gregtech:meta_item_1:32633>,
    <gregtech:meta_item_1:32634>,

    <gregtech:meta_item_1:32640>,
    <gregtech:meta_item_1:32641>,
    <gregtech:meta_item_1:32642>,
    <gregtech:meta_item_1:32643>,
    <gregtech:meta_item_1:32644>,

    <gregtech:meta_item_1:32650>,
    <gregtech:meta_item_1:32651>,
    <gregtech:meta_item_1:32652>,
    <gregtech:meta_item_1:32653>,
    <gregtech:meta_item_1:32654>,

    <gregtech:meta_item_1:32670>,
    <gregtech:meta_item_1:32671>,
    <gregtech:meta_item_1:32672>,
    <gregtech:meta_item_1:32673>,
    <gregtech:meta_item_1:32674>,

    <gregtech:meta_item_1:32680>,
    <gregtech:meta_item_1:32681>,
    <gregtech:meta_item_1:32682>,
    <gregtech:meta_item_1:32683>,
    <gregtech:meta_item_1:32684>,

    <gregtech:meta_item_1:32690>,
    <gregtech:meta_item_1:32691>,
    <gregtech:meta_item_1:32692>,
    <gregtech:meta_item_1:32693>,
    <gregtech:meta_item_1:32694>,

    <air_support:crate_drop_remote>,
    <air_support:medical_crate_drop_remote>,
    <air_support:utility_crate_drop_remote>,
    <scalinghealth:healingitem>,
    <scalinghealth:healingitem:1>,
    <modularmachinery:blockfluidinputhatch:7>,

    <meta_tile_entity:gtadditions:circuit_assembler.lv>,
    <meta_tile_entity:gtadditions:circuit_assembler.mv>,
    <meta_tile_entity:gtadditions:circuit_assembler.hv>,
    <meta_tile_entity:gtadditions:circuit_assembler.ev>,

    <minecraft:furnace>,
    <actuallyadditions:block_misc:9>,
    <thermalexpansion:augment:273>,
    <thermalexpansion:augment:257>,
    <advancedmortars:mortar:*>,
    <thermalfoundation:material:260>,
    <thermalfoundation:material:261>,
    <appliedenergistics2:grindstone>,
    <appliedenergistics2:crank>,
    <appliedenergistics2:energy_acceptor>,
    <enderio:item_endergy_conduit:3>,
    <threng:machine:2>,
    <gregtech:meta_tool:12>.withTag({}),
    <mekanism:basicblock:14>,
    <mekanism:basicblock:15>,

    <meta_tile_entity:gtadditions:arc_furnace.luv>,
    <meta_tile_entity:gtadditions:plasma_arc_furnace.luv>,
    <meta_tile_entity:gtadditions:autoclave.luv>,
    <meta_tile_entity:gtadditions:dehydrator.luv>,
    <meta_tile_entity:gtadditions:rocket_generator.mk3>,
    <meta_tile_entity:gtadditions:rotor_holder.luv>,
    <gregtech:machine_casing:6>
] as IIngredient[];

for outputs in removeoutput{
    recipes.remove(outputs);
}

//熔炉
furnace.setFuel(<gregtech:meta_item_1:3106>, 800);
furnace.setFuel(<enderio:item_material:23>, 1600);

val frem = [
    <gregtech:meta_item_1:10001>,
    <gregtech:meta_item_1:10184>,
    <gregtech:meta_item_1:10184>,
    <enderio:item_alloy_endergy_ingot:3>,
    <minecraft:coal:1>,
    <mechanics:heavy_ingot>,
    <appliedenergistics2:material:5>,
    <mekanism:ingot:1>,
    <enderio:item_alloy_ingot:2>,
    <gregtech:meta_item_1:10502>,
    <endreborn:item_ingot_wolframium>
] as IItemStack[];
for frems in frem{
    furnace.remove(frems);
}

for isteel in <ore:ingotSteel>.items{
	furnace.remove(isteel);
}

for ialu in <ore:ingotAluminum>.items{
    furnace.remove(ialu);
}
