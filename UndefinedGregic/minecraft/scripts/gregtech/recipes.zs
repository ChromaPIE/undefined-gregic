#priority -2002

import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDictEntry;
import scripts.crmpfunc.gtRecFunc.GTRecipe;
import scripts.crmpfunc.gtRecFunc.GTRecipeNoco;
import scripts.crmpfunc.gtRecFunc.GTRecipePropt;
import scripts.crmpfunc.gtRecFunc.GTRecipeProptNoco;

import scripts.sstatic.armArray;
import scripts.sstatic.conveyorArray;
import scripts.sstatic.emitterArray;
import scripts.sstatic.fielderArray;
import scripts.sstatic.motorArray;
import scripts.sstatic.pistonArray;
import scripts.sstatic.pumpArray;
import scripts.sstatic.sensorArray;
import scripts.sstatic.tieredCircArray;
import scripts.sstatic.conduitArray;

val enderd = <ore:dustEnder>;

var prog = [] as IIngredient[];
for i in 0 to 33{
    prog += <metaitem:circuit.integrated>.withTag({Configuration: i});
}

GTRecipe(grind,[<ore:crystalFluix>],[<ore:dustFluix>.firstItem],null,null,100,20);
GTRecipe(grind,[<ore:itemPulsatingPowder>],[<enderio:item_material:36>],null,null,80,64);
GTRecipe(grind,[<enderio:item_material:16>],[<enderio:item_material:37>],null,null,80,130);
GTRecipe(grind,[<contenttweaker:sn_p_brk>],[<ore:dustImpureTin>.firstItem],null,null,30,8);
GTRecipe(grind,[<contenttweaker:fe_p_brk>],[<ore:dustImpureIron>.firstItem],null,null,30,8);
GTRecipe(grind,[<contenttweaker:au_p_brk>],[<ore:dustImpureGold>.firstItem],null,null,30,8);
GTRecipe(grind,[<contenttweaker:pb_p_brk>],[<ore:dustImpureLead>.firstItem],null,null,30,8);
GTRecipe(grind,[<contenttweaker:ag_p_brk>],[<ore:dustImpureSilver>.firstItem],null,null,30,8);
GTRecipe(grind,[<contenttweaker:ni_p_brk>],[<ore:dustImpureNickel>.firstItem],null,null,30,8);
GTRecipe(grind,[<contenttweaker:cu_p_brk>],[<ore:dustImpureCopper>.firstItem],null,null,30,8);
GTRecipe(grind,[<contenttweaker:obs_p_brk>],[<endreborn:item_shard_obsidian>*2],null,null,45,8);
GTRecipe(grind,[<contenttweaker:al_p_brk>],[<ore:dustImpureAluminium>.firstItem],null,null,30,8);
GTRecipe(grind,[<appliedenergistics2:sky_stone_block>],[<appliedenergistics2:material:45>],null,null,200,20);

GTRecipe(mixer,[<ore:dustBedrock>,<ore:dustCoal>],[<enderio:item_material:75>],null,null,50,25);
GTRecipe(mixer,[<ore:dustRuby>*9,<ore:dustRedstone>*9],[<metaitem:energium_dust>*9],null,null,100,16);
GTRecipe(mixer,[<ore:dustFluix>*2,<ore:dustCoal>*2,<ore:dustSilicon>],[<threng:material:1>],null,null,50,25);
GTRecipe(mixer,[<ore:dustEnergeticAlloy>,enderd],[<ore:dustVibrantAlloy>.firstItem],null,null,100,25);
GTRecipe(mixer,[<ore:dustLead>*3,<ore:dustPlatinum>],[<thermalfoundation:material:103>*4],[<fluid:ender>*1000],null,50,125);
GTRecipe(mixer,[<ore:dustTin>*3,<ore:dustSilver>],[<thermalfoundation:material:102>*4],[<fluid:glowstone>*1000],null,125,64);
GTRecipe(mixer,[<ore:dustSterlingSilver>*5, <ore:dustCopper>*11],[<thermalfoundation:material:101>*16],[<fluid:redstone>*4000],null,125,120);
GTRecipe(mixer,[<appliedenergistics2:material:45>,<ore:dustObsidian>,<ore:dustDiamond>],[<mekanism:otherdust:5>],null,null,50,25);
GTRecipe(mixer,[<metaitem:energium_dust>,<ore:dustGold>,<ore:dustGlowstone>],[<ore:dustEnergeticAlloy>.firstItem],null,null,100,25);
GTRecipe(mixer,[<thermalfoundation:material:894>*2],null,[<fluid:cryotheum>*500,<fluid:distilled_water>*500],[<fluid:nerfed_cryotheum>*1000],50,8);
GTRecipe(mixer,[<ore:dustNetherStar>,<ore:itemEnderCrystalPowder>,<endreborn:item_dragonite_seeds>*5],[<ore:dustStellarAlloy>.firstItem*12],null,null,200,150);

GTRecipe(alloyer,[<ore:ingotIron>,<ore:dustObsidian>],[<ore:ingotDarkSteel>.firstItem],null,null,200,50);
GTRecipe(alloyer,[<ore:dustRedstone>,<ore:itemSilicon>],[<ore:ingotRedstoneAlloy>.firstItem],null,null,100,25);
GTRecipe(alloyer,[<futureminecraf:soulsoil>,<ore:ingotGold>],[<ore:ingotSoularium>.firstItem],null,null,50,25);
GTRecipe(alloyer,[<metaitem:compressed.clay>,<ore:dustStone>],[<ore:ingotCrudeSteel>.firstItem],null,null,50,25);
GTRecipe(alloyer,[<ore:ingotRedstoneAlloy>,<ore:dustIron>],[<ore:ingotConductiveIron>.firstItem],null,null,100,25);
GTRecipe(alloyer,[<ore:ingotEnergeticSilver>,enderd],[<enderio:item_alloy_endergy_ingot:6>],null,null,100,25);
GTRecipe(alloyer,[<minecraft:chorus_flower>,<ore:ingotEndSteel>],[<enderio:item_alloy_endergy_ingot:2>],null,null,100,50);
GTRecipe(alloyer,[<futureminecraf:netheritescrap>,<ore:ingotSoularium>],[<futureminecraf:netheriteingot>],null,null,100,25);
GTRecipe(alloyer,[<ore:itemPulsatingPowder>,<appliedenergistics2:material:1>],[<enderio:item_alloy_endergy_ingot:1>],null,null,100,25);

GTRecipe(assembler,[prog[8],<ore:platePallaridium>*8],[<gregtech:machine_casing:6>],null,null,50,16);
GTRecipe(assembler,[<ore:alloyElite>,<threng:material:6>],[<mekanism:atomicalloy>],null,null,360,32);
GTRecipe(assembler,[prog[5],<ore:plateSteel>*6,<ore:frameGtSteel>],[<gregtech:metal_casing_steel>*3],null,null,200,8);
GTRecipe(assembler,[<ore:alloyAdvanced>,<appliedenergistics2:material:24>],[<mekanism:reinforcedalloy>],null,null,240,32);
GTRecipe(assembler,[<ore:gearDark>,<ore:itemBinderComposite>,<ore:string>],[<enderio:item_dark_steel_upgrade>],null,null,30,25);
GTRecipe(assembler,[<modularmachinery:itemmodularium>*6, <ore:frameGtSteel>],[<modularmachinery:blockcasing>*3],null,null,50,16);
GTRecipe(assembler,[<modularmachinery:blockcasing>*4,<ore:plateRefinedObsidian>*4],[<modularmachinery:blockcasing:4>*4],null,null,50,128);
GTRecipe(assembler,[prog[5],<ore:plateTungstenSteel>*6,<ore:frameGtTungstenSteel>],[<gregtech:metal_casing_tungsten_steel>*3],null,null,200,8);
GTRecipe(assembler,[<ore:plateSteel>*4,<ore:frameGtTungstenSteel>,<metaitem:robot.arm.iv>*2],[<gtadditions:ga_multiblock_casing>*2],null,null,50,16);
GTRecipe(assembler,[<modularmachinery:blockcasing>,<ore:circuitBasic>*4],[<modularmachinery:blockcasing:5>],[<fluid:soldering_alloy>*144],null,100,32);
GTRecipe(assembler,[<modularmachinery:itemmodularium>*4,<gregtech:metal_casing:4>,<ore:gearOsmium>*4],[<modularmachinery:blockcasing:3>*2],null,null,50,32);
GTRecipe(assembler,[<contenttweaker:binder>*6,<ore:wireGtDoubleLumium>,<contenttweaker:wafer_esilver>],[<enderio:item_endergy_conduit:7>*9],null,null,210,32);
GTRecipe(assembler,[<contenttweaker:binder>*6,<ore:wireGtDoubleSignalum>,<contenttweaker:fluxed_elec_stick>*2],[<enderio:item_endergy_conduit:6>*9],null,null,180,16);
GTRecipe(assembler,[<contenttweaker:binder>*6,<ore:wireGtDoubleVibrantAlloy>,<contenttweaker:conductive_chrome_ball>*13],[<enderio:item_power_conduit>*9],null,null,150,8);
GTRecipe(assembler,[<enderio:item_power_conduit:2>*8,<ore:alloyElite>,<mekanism:transmitter>.withTag({tier: 1})*8],[<mekanism:transmitter>.withTag({tier: 2})*8],null,null,100,1024);
GTRecipe(assembler,[<enderio:item_endergy_conduit:7>*8,<ore:alloyAdvanced>,<mekanism:transmitter>.withTag({tier: 0})*8],[<mekanism:transmitter>.withTag({tier: 1})*8],null,null,100,512);
GTRecipe(assembler,[<ore:circuitAdvanced>,<gregtech:meta_item_2:32444>,<gregtech:meta_item_2:32485>*4,<gregtech:meta_item_2:16051>*32,<gregtech:meta_item_2:32482>*32,<gregtech:meta_item_2:32480>*64],[<gregtech:meta_item_1:32707>],[<fluid:soldering_alloy>*144],null,400,1200);

GTRecipePropt(ebf,[<ore:itemSilicon>*8],[<ore:ingotSilicon>.firstItem],null,null,80,40,400);
GTRecipePropt(ebf,[<ore:ingotIron>,enderd],[<enderio:item_alloy_ingot:5>],null,null,60,25,1000);
GTRecipePropt(ebf,[<ore:dustVibrantAlloy>],[<enderio:item_alloy_ingot:2>],null,null,120,30,1800);
GTRecipePropt(ebf,[<ore:dustEnderium>],[<ore:ingotHotEnderium>.firstItem],null,null,120,250,1800);
GTRecipePropt(ebf,[prog[0],<ore:dustSilicon>],[<ore:ingotSilicon>.firstItem],null,null,80,40,400);
GTRecipePropt(ebf,[<ore:dustStellarAlloy>],[<ore:ingotStellarAlloy>.firstItem],null,null,100,50,3000);
GTRecipePropt(ebf,[<ore:ingotIron>,<ore:dustCoal>,<ore:itemSilicon>],[<enderio:item_alloy_ingot>],null,null,100,25,1500);
GTRecipePropt(ebf,[<ore:ingotGold>,<ore:ingotSteel>],[<contenttweaker:hardened_gold_ingot>*2],[<fluid:oxygen>*100],null,700,32,1600);
GTRecipePropt(ebf,[<ore:itemPulsatingPowder>,<ore:slimeball>,<ore:dyePink>],[<enderio:item_alloy_endergy_ingot:4>],null,null,100,25,1500);
GTRecipePropt(ebf,[<ore:ingotElectrum>,<metaitem:energium_dust>*3],[<contenttweaker:fluxed_elec>],[<fluid:redstone>*500],null,750,120,2600);
GTRecipePropt(ebf,[<ore:ingotIridium>*3,<ore:ingotOsmium>],[<ore:ingotHotOsmiridium>.firstItem*4],[<fluid:helium>*1000],null,500,1920,5400);
GTRecipePropt(ebf,[<ore:ingotConductiveIron>*2,<ore:ingotChrome>],[<contenttweaker:conductive_chrome>*3],[<fluid:oxygen>*300],null,750,120,1700);
GTRecipePropt(ebf,[<endreborn:food_dragonite_berries>,<ore:ingotDarkSteel>,<ore:dustObsidian>],[<ore:ingotEndSteel>.firstItem],null,null,100,50,5000);
GTRecipePropt(ebf,[<contenttweaker:dust_lapotron>,<ore:ingotSilver>,<mekanism:ingot:3>],[<enderio:item_alloy_endergy_ingot:5>*3],null,null,750,120,3000);

GTRecipe(lathe,[<contenttweaker:fluxed_elec>],[<contenttweaker:fluxed_elec_stick>*2],null,null,112,16);
GTRecipe(lathe,[<ore:nuggetConductiveChrome>],[<ore:roundConductiveChrome>.firstItem],null,null,100,8);

GTRecipe(abf,[<ore:dustPalladium>,<ore:dustIridium>],null,null,[<fluid:pallaridium>*288],760,2980);

GTRecipe(electro,null,null,[<fluid:heavywater>*2000],[<fluid:deuterium>*2000,<fluid:oxygen>*1000],3000,60);

GTRecipe(solider,[<metaitem:wafer.power_integrated_circuit>],[<contenttweaker:wafer_esilver>],[<fluid:energetic_silver>*72],null,600,960);

GTRecipe(extractf,[<ore:crystalRedstone>],null,null,[<fluid:redstone>*250],40,16);
GTRecipe(extractf,[<ore:ingotEnergeticSilver>],null,null,[<fluid:energetic_silver>*144],80,512);

GTRecipeNoco(extrude,[<ore:ingotFluxedElectrum>],[<metaitem:shape.extruder.rod>],[<contenttweaker:fluxed_elec_stick>*2],null,null,112,48);

GTRecipeNoco(unpack,[<ore:ingotConductiveChrome>],[<metaitem:schematic.3by3>],[<ore:nuggetConductiveChrome>.firstItem*9],null,null,100,4);

val conduitBlockArray = [
    <contenttweaker:b_lv>,
    <contenttweaker:b_mv>,
    <contenttweaker:b_hv>,
    <contenttweaker:b_ev>,
    <contenttweaker:b_iv>,
    <contenttweaker:b_luv>,
    <contenttweaker:b_zpm>,
    <contenttweaker:b_uv>
] as IItemStack[];

for j, cblocks in conduitBlockArray{
    GTRecipe(assembler,[tieredCircArray[j]*2,conduitArray[j]],[cblocks*3],[<fluid:soldering_alloy>*1152],null,240,560);
}

centri.recipeBuilder() //荧石络合物
    .inputs([<ore:oreClathrateGlowstone>])
    .chancedOutput(<ore:dustNetherrack>.firstItem,6700,0)
    .chancedOutput(<gregtech:meta_item_1:2065>,3000,0)
    .chancedOutput(<thermalfoundation:material:894>*3,10000,0)
    .duration(400).EUt(12).buildAndRegister();

grind.recipeBuilder() //EReborn钨矿石
    .inputs([<ore:oreTungsten>])
    .chancedOutput(<ore:dustEndstone>.firstItem,6700,0)
    .chancedOutput(<ore:crushedTungstate>.firstItem*2,7200,100)
    .chancedOutput(<ore:crushedScheelite>.firstItem*3,10000,0)
    .duration(600).EUt(24).buildAndRegister();

centri.recipeBuilder()
    .inputs([<ore:dustEndstone>*8])
    .fluidOutputs(<fluid:helium>*15)
    .fluidOutputs(<fluid:helium3>*6)
    .chancedOutput(<ore:dustSand>.firstItem*4,10000,0)
    .chancedOutput(<ore:dustScheelite>.firstItem*2,3600,400)
    .chancedOutput(<ore:dustTungstate>.firstItem,3350,200)
    .duration(500).EUt(384).buildAndRegister();
