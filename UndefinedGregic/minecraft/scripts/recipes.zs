#priority -100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.sstatic.hullArray;

val basec = <mekanism:controlcircuit>;
val basex = <metaitem:board.basic>;
val mekbase = <mekanism:basicblock:8>;
val basemm = <modularmachinery:blockcasing>;
val basetr = <randomthings:ingredient:8>;

val w16ytbacu = <ore:wireGtHexYttriumBariumCuprate>;
val c4nbti = <ore:cableGtQuadrupleNiobiumTitanium>;

val baseluv = <meta_tile_entity:hull.luv>;
val pumpluv = <metaitem:electric.pump.luv>;

val tungp = <ore:plateTungsten>;
val lapisp = <ore:plateLapis>;
val glasp = <ore:paneGlass>;
val endp = <ore:plateEnderium>;
val ironp = <ore:plateIron>;
val woodpk = <ore:plankWood>;
val nicp = <ore:plateNickel>;
val stilp = <ore:plateSteel>;
val pdirp = <ore:platePallaridium>;

val lthr = <ore:leather>;
val wool = <ore:wool>;
val inpearl = <rftools:infused_enderpearl>;
val log = <ore:logWood>;
val hvyb = <mechanics:heavy_block>;
val bind = <enderio:item_material:4>;
val ccoil = <contenttweaker:c_coil>;

val exp = <actuallyadditions:item_solidified_experience>;
val rchtf = <thermalfoundation:wrench>;
val aafnc = <actuallyadditions:block_furnace_double>;
val lapoch = <metaitem:engraved.lapotron_chip>;
val cobb = <minecraft:cobblestone>;
val ston = <minecraft:stone>;
val flt = <minecraft:flint>;
val rest = <ore:dustRedstone>;
val stilcas = <ore:gtMetalCasingSteel>;
val glasq = <appliedenergistics2:quartz_glass>;
val giros = <ore:gearOsmium>;

val basc = <ore:circuitBasic>;
val advc = <ore:circuitAdvanced>;
val masc = <ore:circuitMaster>;
val ultc = <ore:circuitUltimate>;

val ironst = <ore:stickIron>;
val woodst = <ore:stickWood>;
val nicst = <ore:stickNickel>;

val stil = <ore:ingotSteel>;
val iron = <ore:ingotIron>;
val mmin = <modularmachinery:itemmodularium>;

val mekbases = [mekbase,mekbase,mekbase] as IItemStack[];
val irons = [iron,iron,iron] as IOreDictEntry[];
val ironps = [ironp,ironp,ironp] as IOreDictEntry[];
val pdirps = [pdirp,pdirp,pdirp] as IOreDictEntry[];

//有序
val shapedRecipes as IIngredient[][][IItemStack] = {
    <gregtech:machine_casing:6> : [
        pdirps,
        [pdirp,<ore:craftingToolWrenchAlt>,pdirp],
        pdirps
    ],

    <gregtech:machine:2238> : [
        [<metaitem:electric.motor.luv>,masc,<metaitem:electric.motor.luv>],
        [<metaitem:electric.piston.luv>,baseluv,<metaitem:electric.piston.luv>],
        [<ore:plateDensePallaridium>,<ore:cableGtDoubleNiobiumTitanium>,<ore:plateDensePallaridium>]
    ],

    <gregtech:machine:2253> : [
        [<ore:wireGtQuadrupleHssg>,masc,<ore:wireGtQuadrupleHssg>],
        [c4nbti,baseluv,c4nbti],
        [pdirp,<metaitem:robot.arm.luv>,pdirp]
    ],

    <gregtech:machine:2033> : [
        [c4nbti,<ore:ingotGraphite>,c4nbti],
        [masc,baseluv,masc],
        pdirps
    ],

    <gregtech:machine:2149> : [
        [c4nbti,<ore:ingotGraphite>,c4nbti],
        [ultc,baseluv,ultc],
        [pumpluv,pdirp,pumpluv]
    ],

    <gregtech:machine:2041> : [
        [pdirp,<gtadditions:ga_transparent_casing:4>,pdirp],
        [pdirp,baseluv,pdirp],
        [masc,pumpluv,masc]
    ],

    <gregtech:machine:3209> : [
        [w16ytbacu,baseluv,w16ytbacu],
        [w16ytbacu,<ore:gearPallaridium>,w16ytbacu],
        [w16ytbacu,w16ytbacu,w16ytbacu]
    ],

    <randomthings:plate_itemsealer> * 3 : [
        [basetr,<ore:dustGlowstone>,basetr],
        [lapisp,stilp,lapisp],
        [basetr,<ore:dustGlowstone>,basetr]
    ],

    <contenttweaker:endercluster> * 4 : [
        [inpearl,inpearl,inpearl],
        [inpearl,<ore:itemEnderCrystal>,inpearl],
        [inpearl,inpearl,inpearl]
    ],

    <fluiddrawers:tank> : [
        [ironp,stilp,ironp],
        [ironp,<thermalexpansion:reservoir:2>,ironp],
        [ironp,stilp,ironp]
    ],

    <tesseract:tesseract> * 2 : [
        [endp,inpearl,endp],
        [endp,<meta_tile_entity:buffer.lv>,endp],
        [endp,<appliedenergistics2:material:41>,endp]
    ],
    
    <air_support:utility_crate_drop_remote> : [
        [lapisp,<metaitem:emitter.lv>,lapisp],
        [lapisp,<air_support:circuit_board>,lapisp],
        [null,lapisp,null]
    ],

    <gregtech:machine:2539> : [
        [aafnc,aafnc,aafnc],
        [advc,<gregtech:metal_casing_invar>,advc],
        [<mekanism:basicblock2:5>,advc,<mekanism:basicblock2:5>]
    ],

    <modularmachinery:blockcontroller> : [
        [null,lapoch,null],
        [lapoch,basemm,lapoch],
        [null,lapoch,null]
    ],

    <contenttweaker:good_c> * 2 : [
        [null,<ore:nuggetEnergeticAlloy>,null],
        [<ore:nuggetEnergeticAlloy>,basex,<ore:nuggetEnergeticAlloy>],
        [null,<ore:nuggetEnergeticAlloy>,null]
    ],

    <contenttweaker:infinite_c> * 2 : [
        [null,<draconicevolution:draconic_energy_core>,null],
        [<projecte:rm_furnace>,basex,<projecte:rm_furnace>],
        [null,<draconicevolution:draconic_energy_core>,null]
    ],

    <rftools:machine_frame> : [
        [ironp,<ore:gemLapis>,ironp],
        [<actuallyadditions:item_misc:8>,null,<actuallyadditions:item_misc:8>],
        [ironp,<ore:gemLapis>,ironp]
    ],

    <minecraft:furnace> : [
        [cobb,cobb,cobb],
        [cobb,<ore:blockCharcoal>,cobb],
        [cobb,cobb,cobb]
    ],

    <actuallyadditions:block_misc:9> : [
        ironps,
        [ironp,<ore:gemQuartzBlack>,ironp],
        ironps
    ],

    <contenttweaker:pestle_head> : [
        [null,ston,null],
        [ston,flt,ston],
        [null,flt,null]
    ],

    <campfire:campfire> : [
        [null,woodst,null],
        [woodst,<ore:charcoal>,woodst],
        [log,log,log]
    ],

    <mechanics:crushing_block> : [
        ironps,
        [ironp,<ore:blockBronze>,ironp],
        [hvyb,hvyb,hvyb]
    ],

    <mekanism:enrichedalloy> * 4 : [
        [null,basex,null],
        [ironp,<gregtech:cable:1500>,ironp],
        [null,basex,null]
    ],

    <thermalexpansion:machine:5> : [
        [null,<mechanics:crushing_block>,null],
        [<ore:ingotBronze>,<thermalexpansion:frame>,<ore:ingotBronze>],
        [<ore:gearBronze>,<thermalfoundation:material:513>,<ore:gearBronze>]
    ],

    <enderio:item_endergy_conduit:3> * 8 : [
        [bind,bind,bind],
        [<contenttweaker:hardened_gold_ingot>,<enderio:item_material:75>,<contenttweaker:hardened_gold_ingot>],
        [bind,bind,bind]
    ],

    <mekanism:basicblock:8> : [
        [null,stilcas,null],
        [stilcas,<ore:gearSmallSteel>,stilcas],
        [null,stilcas,null]
    ],

    <mekanism:machineblock> : [
        [rest,basc,rest],
        [ironp,stilcas,ironp],
        [rest,basc,rest]
    ],

    <mekanism:machineblock:12> : [
        [null,<metaitem:large_fluid_cell.steel>,null],
        [<ore:alloyAdvanced>,mekbase,<ore:alloyAdvanced>],
        [giros,giros,giros]
    ],

    <mekanism:machineblock3:5> : [
        [stilp,<meta_tile_entity:gregtech:workbench>,stilp],
        [basc,stilcas,basc],
        [stilp,<meta_tile_entity:gregtech:item_bus.import.mv>,stilp]
    ],

    <mekanism:machineblock3:6> : [
        [stilp,basc,stilp],
        [<minecraft:furnace>,<gregtech:machine_casing:13>,<minecraft:furnace>],
        [stilp,stilp,stilp]
    ],

    <threng:machine:2> : [
        [<appliedenergistics2:material:19>,<ae2stuff:inscriber>,<appliedenergistics2:material:13>],
        [<appliedenergistics2:quartz_glass>,<threng:material:4>,<appliedenergistics2:quartz_glass>],
        [<appliedenergistics2:material:15>,<appliedenergistics2:material:43>,<appliedenergistics2:material:14>]
    ],

    <gregtech:wire_coil> * 2 : [
        [ccoil,ccoil,ccoil],
        [ccoil,<ore:craftingToolWrenchAlt>,ccoil],
        [ccoil,ccoil,ccoil]
    ],

    <appliedenergistics2:energy_acceptor> : [
        [ironp,glasq,ironp],
        [glasq,<threng:material:4>,glasq],
        [ironp,glasq,ironp]
    ]
};

//镜像有序
val shapedMirroredRecipes as IIngredient[][][IItemStack] = {
    <contenttweaker:extreme_c> * 2 : [
        [<ore:gearLumium>,basex,<ore:gearLumium>]
    ],

    <contenttweaker:master_c> * 2 : [
        [<ore:gearEnderium>,basex,<ore:gearEnderium>]
    ],

    <contenttweaker:superconductor_c> : [
        [<draconicevolution:wyvern_core>,basex,<draconicevolution:wyvern_core>]
    ],

    <gregtech:machine:509> : [
        [<enderio:item_endergy_conduit:11>,<gregtech:machine_casing:9>,<enderio:item_endergy_conduit:11>]
    ],

    <randomthings:enderbucket> : [
        [<ore:ingotEndorium>,null,<ore:ingotEndorium>],
        [null,<minecraft:bucket>,null]
    ],

    <contenttweaker:empty_spray> : [
        [<ore:dustGlowstone>],
        [<metaitem:spray.empty>]
    ],

    <valkyrielib:modifier_component> * 2 : [
        [masc],
        [tungp]
    ],

    <modularmachinery:blockinputbus> : [
        [<ore:chestWood>],
        [<meta_tile_entity:hull.ulv>],
        [mmin]
    ],

    <modularmachinery:blockinputbus:5> : [
        [<ore:chestWood>],
        [<meta_tile_entity:hull.hv>],
        [mmin]
    ],

    <modularmachinery:blockoutputbus> : [
        [mmin],
        [<meta_tile_entity:hull.ulv>],
        [<ore:chestWood>]
    ],

    <modularmachinery:blockenergyinputhatch:7> : [
        [<ore:wireGtQuadrupleNaquadahAlloy>,<meta_tile_entity:hull.uv>,mmin]
    ],

    <modularmachinery:blockenergyinputhatch:4> : [
        [<enderio:item_endergy_conduit:6>,<meta_tile_entity:hull.ev>,mmin]
    ],

    <modularmachinery:blockenergyinputhatch:2> : [
        [<ore:cableGtSingleCopper>,<meta_tile_entity:hull.mv>,mmin]
    ],

    <modularmachinery:blockfluidinputhatch:7> : [
        [<ore:blockGlass>],
        [<meta_tile_entity:fluid_hatch.import.mv>],
        [mmin]
    ],

    <modularmachinery:blockfluidoutputhatch:7> : [
        [mmin],
        [<meta_tile_entity:fluid_hatch.import.mv>],
        [<ore:blockGlass>]
    ],

    <gregtech:meta_item_1:12196> : [
        [null,<gregtech:meta_tool:9>.withEmptyTag(),null],
        [woodpk,woodpk,woodpk]
    ],

    <gregtech:meta_item_1:12328> : [
        [null,<gregtech:meta_tool:6>.withEmptyTag(),null],
        [cobb,cobb,cobb]
    ],

    <gregtech:meta_tool>.withTag({"GT.ToolStats": {MaxDurability: 80, DigSpeed: 6.0 as float, AttackDamage: 2.0 as float, Material: "flint", HarvestLevel: 1}}) : [
        [null,flt,null],
        [null,flt,null],
        [null,woodst,null]
    ],

    <gregtech:meta_tool:17>.withTag({"GT.ToolStats": {MaxDurability: 80, DigSpeed: 6.0 as float, AttackDamage: 2.0 as float, Material: "flint", HarvestLevel: 1}}) : [
        [null,flt],
        [null,woodst]
    ],

    <contenttweaker:fluxed_elec_stick> : [
        [<gregtech:meta_tool:17>.withEmptyTag(),null],
        [null,<contenttweaker:fluxed_elec>]
    ]
};

//无序
val shapedlessRecipes as IIngredient[][IItemStack] = {
    <delivery:store_tech>.withTag({_profile: "_default"}) : [
        <mekanism:walkietalkie>.withTag({}),<ore:gemEmerald>
    ],

    <contenttweaker:c_coil> : [
        <ore:wireGtDoubleCupronickel>.firstItem,<ore:dustAluminoSilicateWool>.firstItem,<minecraft:string>
    ]
};

//额外操作
recipes.replaceAllOccurences(<mekanism:controlcircuit:0>,<contenttweaker:good_c>,<mekanism:controlcircuit:1>);
recipes.replaceAllOccurences(<mekanism:controlcircuit:1>,<contenttweaker:extreme_c>,<mekanism:controlcircuit:2>);
recipes.replaceAllOccurences(<mekanism:controlcircuit:2>,<contenttweaker:master_c>,<mekanism:controlcircuit:3>);

//CEU Overhaul
var hull_noMax_Array = [] as IItemStack[];
for i in 0 to 9{
    hull_noMax_Array += hullArray[i];
}

val gtcasing = <gregtech:machine_casing>;
val gtcDef = gtcasing.definition;
val gtcArray = [
    gtcasing,
    gtcDef.makeStack(1),
    gtcDef.makeStack(2),
    gtcDef.makeStack(3),
    gtcDef.makeStack(4),
    gtcDef.makeStack(5),
    gtcDef.makeStack(6),
    gtcDef.makeStack(7),
    gtcDef.makeStack(8),
    gtcDef.makeStack(9)
] as IItemStack[];

val hullInputArray = [
    [<enderio:item_endergy_conduit>,gtcasing,<enderio:item_endergy_conduit>],
    [<enderio:item_endergy_conduit:1>,gtcArray[1],<enderio:item_endergy_conduit:1>],
    [<enderio:item_endergy_conduit:3>,gtcArray[2],<enderio:item_endergy_conduit:3>],
    [<enderio:item_power_conduit>,gtcArray[3],<enderio:item_power_conduit>],
    [<enderio:item_endergy_conduit:6>,gtcArray[4],<enderio:item_endergy_conduit:6>],
    [<mekanism:transmitter>.withTag({tier: 1}),gtcArray[5],<mekanism:transmitter>.withTag({tier: 1})],
    [<mekanism:transmitter>.withTag({tier: 2}),gtcArray[6],<mekanism:transmitter>.withTag({tier: 2})],
    [<enderio:item_endergy_conduit:8>,gtcArray[7],<enderio:item_endergy_conduit:8>],
    [<enderio:item_endergy_conduit:9>,gtcArray[8],<enderio:item_endergy_conduit:9>],
] as IItemStack[][];

val CEUArray = [
    <gregtech:machine:2906>,
    <gregtech:machine:2914>,
    <gregtech:machine:2922>,
    <gregtech:machine:2930>,
    <gregtech:machine:2938>,
    <gregtech:machine:2946>,
    <gregtech:machine:2954>,
    <gregtech:machine:2962>,
    <gregtech:machine:2970>,
] as IItemStack[];

val CEFArray = [
    <gregtech:machine:2907>,
    <gregtech:machine:2915>,
    <gregtech:machine:2923>,
    <gregtech:machine:2931>,
    <gregtech:machine:2939>,
    <gregtech:machine:2947>,
    <gregtech:machine:2955>,
    <gregtech:machine:2963>,
    <gregtech:machine:2971>,
] as IItemStack[];

for i, hulls in hull_noMax_Array{
    recipes.addShaped(CEUArray[i],[[<fluxnetworks:fluxcore>],[hulls],[<fluxnetworks:fluxblock>]]);
    recipes.addShaped(CEFArray[i],[[<fluxnetworks:fluxblock>],[hulls],[<fluxnetworks:fluxcore>]]);
    recipes.addShaped(hulls,[hullInputArray[i]]);
}


//mortar
val mota = <advancedmortars:mortar>;
val motaDef = mota.definition;
val motaArray = [
    mota,
    motaDef.makeStack(1),
    motaDef.makeStack(2),
    motaDef.makeStack(3),
    motaDef.makeStack(4),
    motaDef.makeStack(5),
    motaDef.makeStack(6)
] as IItemStack[];
val motaMatArray = [
    <ore:plateWood>,
    <ore:plateStone>,
    ironp,
    <ore:plateDiamond>,
    <ore:plateGold>,
    <ore:plateObsidian>,
    <ore:plateEmerald>
] as IOreDictEntry[];
for i, motamat in motaMatArray{
    recipes.addShaped(
        motaArray[i],
        [
            [null,null,woodst],
            [motamat,<contenttweaker:pestle_head>,motamat],
            [null,motamat,null]
        ]
    );
}

//furnace
furnace.addRecipe(<mechanics:heavy_ingot>, <mechanics:heavy_mesh>);
furnace.addRecipe(<appliedenergistics2:material:5>, <ore:dustQuartz>);

//结算
for sdoutput in shapedRecipes{
    recipes.addShaped(sdoutput, shapedRecipes[sdoutput]);
}

for msdoutput in shapedMirroredRecipes{
    recipes.addShapedMirrored(msdoutput, shapedMirroredRecipes[msdoutput]);
}

for sloutput in shapedlessRecipes{
    recipes.addShapeless(sloutput, shapedlessRecipes[sloutput]);
}

val gtioArray = [
    <meta_tile_entity:gregtech:item_bus.import.ulv>,
    <meta_tile_entity:gregtech:item_bus.import.lv>,
    <meta_tile_entity:gregtech:item_bus.import.mv>,
    <meta_tile_entity:gregtech:item_bus.import.hv>,
    <meta_tile_entity:gregtech:item_bus.import.ev>,
    <meta_tile_entity:gregtech:item_bus.import.iv>,
    <meta_tile_entity:gregtech:item_bus.import.luv>,
    <meta_tile_entity:gregtech:item_bus.import.zpm>,
    <meta_tile_entity:gregtech:item_bus.import.uv>,
    <meta_tile_entity:gregtech:item_bus.import.max>,
    <meta_tile_entity:gregtech:item_bus.export.ulv>,
    <meta_tile_entity:gregtech:item_bus.export.lv>,
    <meta_tile_entity:gregtech:item_bus.export.mv>,
    <meta_tile_entity:gregtech:item_bus.export.hv>,
    <meta_tile_entity:gregtech:item_bus.export.ev>,
    <meta_tile_entity:gregtech:item_bus.export.iv>,
    <meta_tile_entity:gregtech:item_bus.export.luv>,
    <meta_tile_entity:gregtech:item_bus.export.zpm>,
    <meta_tile_entity:gregtech:item_bus.export.uv>,
    <meta_tile_entity:gregtech:item_bus.export.max>,
    <meta_tile_entity:gregtech:fluid_hatch.import.ulv>,
    <meta_tile_entity:gregtech:fluid_hatch.import.lv>,
    <meta_tile_entity:gregtech:fluid_hatch.import.mv>,
    <meta_tile_entity:gregtech:fluid_hatch.import.hv>,
    <meta_tile_entity:gregtech:fluid_hatch.import.ev>,
    <meta_tile_entity:gregtech:fluid_hatch.import.iv>,
    <meta_tile_entity:gregtech:fluid_hatch.import.luv>,
    <meta_tile_entity:gregtech:fluid_hatch.import.zpm>,
    <meta_tile_entity:gregtech:fluid_hatch.import.uv>,
    <meta_tile_entity:gregtech:fluid_hatch.import.max>,
    <meta_tile_entity:gregtech:fluid_hatch.export.ulv>,
    <meta_tile_entity:gregtech:fluid_hatch.export.lv>,
    <meta_tile_entity:gregtech:fluid_hatch.export.mv>,
    <meta_tile_entity:gregtech:fluid_hatch.export.hv>,
    <meta_tile_entity:gregtech:fluid_hatch.export.ev>,
    <meta_tile_entity:gregtech:fluid_hatch.export.iv>,
    <meta_tile_entity:gregtech:fluid_hatch.export.luv>,
    <meta_tile_entity:gregtech:fluid_hatch.export.zpm>,
    <meta_tile_entity:gregtech:fluid_hatch.export.uv>,
    <meta_tile_entity:gregtech:fluid_hatch.export.max>,
    <meta_tile_entity:gtadditions:fluid_hatch.export_filtered.ulv>,
    <meta_tile_entity:gtadditions:fluid_hatch.export_filtered.lv>,
    <meta_tile_entity:gtadditions:fluid_hatch.export_filtered.mv>,
    <meta_tile_entity:gtadditions:fluid_hatch.export_filtered.hv>,
    <meta_tile_entity:gtadditions:fluid_hatch.export_filtered.ev>,
    <meta_tile_entity:gtadditions:fluid_hatch.export_filtered.iv>,
    <meta_tile_entity:gtadditions:fluid_hatch.export_filtered.luv>,
    <meta_tile_entity:gtadditions:fluid_hatch.export_filtered.zpm>,
    <meta_tile_entity:gtadditions:fluid_hatch.export_filtered.uv>,
    <meta_tile_entity:gtadditions:fluid_hatch.export_filtered.max>
] as IItemStack[];

var int1 = 0;
var int2 = 0;
while (int1 < 10 && int2 < 10){
    recipes.addShaped(gtioArray[int2],[[<rftools:inventoryplus_module>],[gtcArray[int1]]]);
    int1 += 1;
    int2 += 1;
}
 
int1 = 0;
while (int1 < 10 && int2 < 20){
    recipes.addShaped(gtioArray[int2],[[gtcArray[int1]],[<rftools:inventoryplus_module>]]);
    int1 += 1;
    int2 += 1;
}

int1 = 0;
while (int1 < 10 && int2 < 30){
    recipes.addShaped(gtioArray[int2],[[<rftools:fluidplus_module>],[gtcArray[int1]]]);
    int1 += 1;
    int2 += 1;
}

int1 = 0;
while (int1 < 10 && int2 < 40){
    recipes.addShaped(gtioArray[int2],[[gtcArray[int1]],[<rftools:fluidplus_module>]]);
    int1 += 1;
    int2 += 1;
}

int1 = 0;
while (int1 < 10 && int2 < 50){
    recipes.addShaped(gtioArray[int2],[[<metaitem:fluid_filter>],[gtcArray[int1]],[<rftools:fluidplus_module>]]);
    int1 += 1;
    int2 += 1;
}
