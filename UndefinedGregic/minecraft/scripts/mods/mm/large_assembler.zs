#priority -100

import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import scripts.crmpfunc.mmRecFunc.MMRecipe;

val this = "large_assembler";

val hpic = <metaitem:plate.high_power_integrated_circuit>;
val coil8 = <gregtech:wire_coil:8>;
val cablesc = <gregtech:cable:354>;
val mstc = <ore:circuitMaster>;
val superc = <ore:circuitSuperconductor>;
val infic = <ore:circuitInfinite>;
val elic = <ore:circuitElite>;
val soloy = <fluid:soldering_alloy>;

MMRecipe(
    this,"gengine",
    [<ore:circuitMaster>,<ore:wireGtSingleIvSuperconductor>,<metaitem:plate.power_integrated_circuit>,<metaitem:field.generator.ev>,<metaitem:field.generator.iv>],
    [4,4,4,2,1],
    [<metaitem:gravitation_engine>],
    [soloy*1152],null,
    1800,28400
);

MMRecipe(
    this,"maxbattery",
    [hpic,hpic,cablesc,<ore:plateNeutronium>,<ore:skullGuardianDiode>,<metaitem:energy.lapotronicorb2>,<metaitem:field.generator.uv>,infic,infic,infic,infic],
    [64,64,32,16,16,8,2,1,1,1,1],
    [<metaitem:zpm2>],
    [soloy*2880,<fluid:water>*16000],null,
    2000,1200000
);

MMRecipe(
    this,"fusion_mk1",
    [hpic,<gregtech:cable:966>,<ore:plateAmericium>,<ore:plateNetherStar>,<metaitem:field.generator.iv>,coil8,<ore:circuitUltimate>],
    [32,32,4,4,2,1,4],
    [<meta_tile_entity:gtadditions:fusion_reactor.luv>],
    [soloy*2880],null,
    1000,120000
);

MMRecipe(
    this,"fusion_mk2",
    [hpic,<gregtech:cable:1964>,<ore:plateRutherfordium>,<ore:plateCurium>,<metaitem:field.generator.luv>,coil8,superc,superc,superc,superc],
    [48,32,4,4,2,1,1,1,1,1],
    [<meta_tile_entity:gtadditions:fusion_reactor.zpm>],
    [soloy*2880],null,
    1000,240000
);

MMRecipe(
    this,"fusion_mk3",
    [hpic,<gregtech:cable:2744>,<ore:plateDubnium>,<ore:plateCalifornium>,<metaitem:field.generator.zpm>,coil8,infic,infic,infic,infic],
    [64,32,4,4,2,1,1,1,1,1],
    [<meta_tile_entity:gtadditions:fusion_reactor.uv>],
    [soloy*2880],null,
    1000,360000
);

MMRecipe(
    this,"qtsa",
    [hpic,<metaitem:plate.iridium_alloy>,<gregtech:cable:967>,elic,<metaitem:gravitation_engine>,<metaitem:qts.chestplate>],
    [16,12,8,4,2,1],
    [<metaitem:qts.advanced_chestplate>],
    [soloy*1152],null,
    3600,32768
);

MMRecipe(
    this,"lnr",
    [hpic,<gregtech:cable:4354>,<ore:plateDenseNaquadria>,<metaitem:field.generator.uv>,coil8,coil8,coil8,coil8,infic,infic,infic,infic],
    [64,32,4,2,1,1,1,1,1,1,1,1],
    [<meta_tile_entity:gtadditions:large_naquadah_reactor>],
    [soloy*2880],null,
    1000,360000
);

MMRecipe(
    this,"vm",
    [cablesc,cablesc,cablesc,cablesc,<ore:gtMetalCasingStaballoy>,<metaitem:sensor.uv>,<meta_tile_entity:gtadditions:miner.basic>,<meta_tile_entity:gtadditions:miner.large>,<meta_tile_entity:gtadditions:miner.advance>,superc,superc,superc,superc],
    [64,64,64,64,2,1,1,1,1,1,1,1,1],
    [<meta_tile_entity:gtadditions:void_miner>],
    [<fluid:hastelloy_n>*576],null,
    600,520000
);

MMRecipe(
    this,"lre",
    [<gregtech:cable:2967>,<gregtech:cable:2967>,<metaitem:electric.piston.luv>,<gtadditions:ga_multiblock_casing:9>,<meta_tile_entity:gtadditions:rocket_generator.mk3>,mstc,mstc,mstc,mstc],
    [64,64,16,2,2,1,1,1,1],
    [<meta_tile_entity:gtadditions:large_rocket_engine>],
    [<fluid:lubricant>*2304,<fluid:rocket_fuel_c>*9216,soloy*1440],null,
    1200,122880
);

MMRecipe(
    this,"adt",
    [<gtadditions:ga_multiblock_casing:8>,<meta_tile_entity:gtadditions:distillation_tower>,elic,elic],
    [2,2,1,1],
    [<meta_tile_entity:gtadditions:advanced_distillation_tower>],
    [<fluid:kanthal>*2304,<fluid:bronze>*9216,<fluid:babbitt_alloy>*2304,soloy*1440],null,
    1200,122880
);
