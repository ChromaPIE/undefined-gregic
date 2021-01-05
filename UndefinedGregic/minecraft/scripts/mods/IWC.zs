#priority -100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.contenttweaker.Material;
import crafttweaker.oredict.IOreDictEntry;

import mods.inworldcrafting.FluidToItem;
import mods.inworldcrafting.FireCrafting;
import mods.inworldcrafting.FluidToFluid;

FireCrafting.addRecipe(<minecraft:coal:1>, <thermalfoundation:material:801> * 2, 200);
FireCrafting.addRecipe(<minecraft:stone>, <minecraft:cobblestone>, 300);

FluidToItem.transform(<enderio:item_material:50>, <fluid:water>, [<ore:dustDarkAsh>], true);
FluidToItem.transform(<thermalfoundation:ore_fluid:3>, <fluid:glowstone>, [<minecraft:netherrack>*4], true);

FluidToFluid.transform(<fluid:empovio>, <fluid:glowstone>, [<metaitem:energium_dust> * 4]);

for i in 0 to 6{
    FluidToItem.transform(
        <actuallyadditions:block_crystal_empowered>.definition.makeStack(i),
        <fluid:empovio>,
        [<actuallyadditions:block_crystal>.definition.makeStack(i)], 
        true
    );
}

val hotArray = [
    <gregtech:meta_item_1:11021>,
    <gregtech:meta_item_1:11037>,
    <gregtech:meta_item_1:11060>,
    <gregtech:meta_item_1:11070>,
    <gregtech:meta_item_1:11078>,
    <gregtech:meta_item_1:11127>,
    <gregtech:meta_item_1:11229>,
    <gregtech:meta_item_1:11963>,
] as IItemStack[];

val coldArray = [
    <gregtech:meta_item_1:10021>,
    <gregtech:meta_item_1:10037>,
    <gregtech:meta_item_1:10060>,
    <gregtech:meta_item_1:10070>,
    <gregtech:meta_item_1:10078>,
    <gregtech:meta_item_1:10127>,
    <gregtech:meta_item_1:10229>,
    <gregtech:meta_item_1:10963>,
                           
] as IItemStack[];

for i, hot in hotArray{
    FluidToItem.transform(coldArray[i], <fluid:nerfed_cryotheum>, [hot], false);
}

val impureArray = [
    <ore:dustImpureAluminium>,
    <ore:dustImpureBeryllium>,
    <ore:dustImpureBismuth>,
    <ore:dustImpureCobalt>,
    <ore:dustImpureCopper>,
    <ore:dustImpureGold>,
    <ore:dustImpureIridium>,
    <ore:dustImpureIron>,
    <ore:dustImpureLead>,
    <ore:dustImpureLithium>,
    <ore:dustImpureMolybdenum>,
    <ore:dustImpureNeodymium>,
    <ore:dustImpureNickel>,
    <ore:dustImpureNiobium>,
    <ore:dustImpureOsmium>,
    <ore:dustImpurePalladium>,
    <ore:dustImpurePlatinum>,
    <ore:dustImpureSilver>,
    <ore:dustImpureSulfur>,
    <ore:dustImpureTellurium>,
    <ore:dustImpureThorium>,
    <ore:dustImpureTin>,
    <ore:dustImpureUranium>,
    <ore:dustImpureUranium235>,
    <ore:dustImpureZinc>,
    <ore:dustImpureAlmandine>,
    <ore:dustImpureAndradite>,
    <ore:dustImpureAsbestos>,
    <ore:dustImpureBandedIron>,
    <ore:dustImpureBlueTopaz>,
    <ore:dustImpureBrownLimonite>,
    <ore:dustImpureCalcite>,
    <ore:dustImpureCassiterite>,
    <ore:dustImpureCassiteriteSand>,
    <ore:dustImpureChalcopyrite>,
    <ore:dustImpureChromite>,
    <ore:dustImpureCinnabar>,
    <ore:dustImpureCoal>,
    <ore:dustImpureCobaltite>,
    <ore:dustImpureCooperite>,
    <ore:dustImpureDiamond>,
    <ore:dustImpureEmerald>,
    <ore:dustImpureGalena>,
    <ore:dustImpureGarnierite>,
    <ore:dustImpureGreenSapphire>,
    <ore:dustImpureGrossular>,
    <ore:dustImpureIlmenite>,
    <ore:dustImpureRutile>,
    <ore:dustImpureBauxite>,
    <ore:dustImpureLazurite>,
    <ore:dustImpureMagnesite>,
    <ore:dustImpureMagnetite>,
    <ore:dustImpureMolybdenite>,
    <ore:dustImpurePhosphate>,
    <ore:dustImpurePowellite>,
    <ore:dustImpurePyrite>,
    <ore:dustImpurePyrolusite>,
    <ore:dustImpurePyrope>,
    <ore:dustImpureRockSalt>,
    <ore:dustImpureRuby>,
    <ore:dustImpureSalt>,
    <ore:dustImpureSaltpeter>,
    <ore:dustImpureSapphire>,
    <ore:dustImpureScheelite>,
    <ore:dustImpureSodalite>,
    <ore:dustImpureSpessartine>,
    <ore:dustImpureSphalerite>,
    <ore:dustImpureStibnite>,
    <ore:dustImpureTanzanite>,
    <ore:dustImpureTetrahedrite>,
    <ore:dustImpureTopaz>,
    <ore:dustImpureTungstate>,
    <ore:dustImpureUraninite>,
    <ore:dustImpureWulfenite>,
    <ore:dustImpureYellowLimonite>,
    <ore:dustImpureNetherQuartz>,
    <ore:dustImpureCertusQuartz>,
    <ore:dustImpureQuartzite>,
    <ore:dustImpureGraphite>,
    <ore:dustImpureJasper>,
    <ore:dustImpureLignite>,
    <ore:dustImpureOlivine>,
    <ore:dustImpureOpal>,
    <ore:dustImpureAmethyst>,
    <ore:dustImpureRedstone>,
    <ore:dustImpureLapis>,
    <ore:dustImpureDiatomite>,
    <ore:dustImpureNiter>,
    <ore:dustImpureTantalite>,
    <ore:dustImpureApatite>,
    <ore:dustImpurePhosphor>,
    <ore:dustImpureGarnetRed>,
    <ore:dustImpureGarnetYellow>,
    <ore:dustImpureVinteum>,
    <ore:dustImpureVanadiumMagnetite>,
    <ore:dustImpureBasalticMineralSand>,
    <ore:dustImpureGraniticMineralSand>,
    <ore:dustImpureGarnetSand>,
    <ore:dustImpureBastnasite>,
    <ore:dustImpurePentlandite>,
    <ore:dustImpureSpodumene>,
    <ore:dustImpurePollucite>,
    <ore:dustImpureLepidolite>,
    <ore:dustImpureGlauconite>,
    <ore:dustImpureGlauconiteSand>,
    <ore:dustImpureVermiculite>,
    <ore:dustImpureBentonite>,
    <ore:dustImpureFullersEarth>,
    <ore:dustImpurePitchblende>,
    <ore:dustImpureMonazite>,
    <ore:dustImpureMalachite>,
    <ore:dustImpureMica>,
    <ore:dustImpureTrona>,
    <ore:dustImpureBarite>,
    <ore:dustImpureGypsum>,
    <ore:dustImpureAlunite>,
    <ore:dustImpureDolomite>,
    <ore:dustImpureWollastonite>,
    <ore:dustImpureZeolite>,
    <ore:dustImpureKyanite>,
    <ore:dustImpureKaolinite>,
    <ore:dustImpureTalc>,
    <ore:dustImpureSoapstone>,
    <ore:dustImpureNaquadah>,
    <ore:dustImpureNaquadahEnriched>,
    <ore:dustImpureOilsands>,
    <ore:dustImpureTenorite>,
    <ore:dustImpureCuprite>,
    <ore:dustImpureBornite>,
    <ore:dustImpureChalcocite>,
    <ore:dustImpureEnargite>,
    <ore:dustImpureTennantite>,
    <ore:dustImpureNaquadriaticCompound>,
    <ore:dustImpureEnrichedNaquadricCompound>,
    <ore:dustImpureNaquadricCompound>,
    <ore:dustImpureUraniumRadioactive>,
    <ore:dustImpurePreciousMetal>,
    <ore:dustImpureIridiumMetalResidue>,
    <ore:dustImpureRarestMetalResidue>,
    <ore:dustImpurePalladiumMetallicPowder>,
    <ore:dustImpurePlatinumMetallicPowder>,
    <ore:dustImpureZirkelite>,
    <ore:dustImpurePrasiolite>
] as IOreDictEntry[];

val pureArray = [
    <ore:dustPureAluminium>,
    <ore:dustPureBeryllium>,
    <ore:dustPureBismuth>,
    <ore:dustPureCobalt>,
    <ore:dustPureCopper>,
    <ore:dustPureGold>,
    <ore:dustPureIridium>,
    <ore:dustPureIron>,
    <ore:dustPureLead>,
    <ore:dustPureLithium>,
    <ore:dustPureMolybdenum>,
    <ore:dustPureNeodymium>,
    <ore:dustPureNickel>,
    <ore:dustPureNiobium>,
    <ore:dustPureOsmium>,
    <ore:dustPurePalladium>,
    <ore:dustPurePlatinum>,
    <ore:dustPureSilver>,
    <ore:dustPureSulfur>,
    <ore:dustPureTellurium>,
    <ore:dustPureThorium>,
    <ore:dustPureTin>,
    <ore:dustPureUranium>,
    <ore:dustPureUranium235>,
    <ore:dustPureZinc>,
    <ore:dustPureAlmandine>,
    <ore:dustPureAndradite>,
    <ore:dustPureAsbestos>,
    <ore:dustPureBandedIron>,
    <ore:dustPureBlueTopaz>,
    <ore:dustPureBrownLimonite>,
    <ore:dustPureCalcite>,
    <ore:dustPureCassiterite>,
    <ore:dustPureCassiteriteSand>,
    <ore:dustPureChalcopyrite>,
    <ore:dustPureChromite>,
    <ore:dustPureCinnabar>,
    <ore:dustPureCoal>,
    <ore:dustPureCobaltite>,
    <ore:dustPureCooperite>,
    <ore:dustPureDiamond>,
    <ore:dustPureEmerald>,
    <ore:dustPureGalena>,
    <ore:dustPureGarnierite>,
    <ore:dustPureGreenSapphire>,
    <ore:dustPureGrossular>,
    <ore:dustPureIlmenite>,
    <ore:dustPureRutile>,
    <ore:dustPureBauxite>,
    <ore:dustPureLazurite>,
    <ore:dustPureMagnesite>,
    <ore:dustPureMagnetite>,
    <ore:dustPureMolybdenite>,
    <ore:dustPurePhosphate>,
    <ore:dustPurePowellite>,
    <ore:dustPurePyrite>,
    <ore:dustPurePyrolusite>,
    <ore:dustPurePyrope>,
    <ore:dustPureRockSalt>,
    <ore:dustPureRuby>,
    <ore:dustPureSalt>,
    <ore:dustPureSaltpeter>,
    <ore:dustPureSapphire>,
    <ore:dustPureScheelite>,
    <ore:dustPureSodalite>,
    <ore:dustPureSpessartine>,
    <ore:dustPureSphalerite>,
    <ore:dustPureStibnite>,
    <ore:dustPureTanzanite>,
    <ore:dustPureTetrahedrite>,
    <ore:dustPureTopaz>,
    <ore:dustPureTungstate>,
    <ore:dustPureUraninite>,
    <ore:dustPureWulfenite>,
    <ore:dustPureYellowLimonite>,
    <ore:dustPureNetherQuartz>,
    <ore:dustPureCertusQuartz>,
    <ore:dustPureQuartzite>,
    <ore:dustPureGraphite>,
    <ore:dustPureJasper>,
    <ore:dustPureLignite>,
    <ore:dustPureOlivine>,
    <ore:dustPureOpal>,
    <ore:dustPureAmethyst>,
    <ore:dustPureRedstone>,
    <ore:dustPureLapis>,
    <ore:dustPureDiatomite>,
    <ore:dustPureNiter>,
    <ore:dustPureTantalite>,
    <ore:dustPureApatite>,
    <ore:dustPurePhosphor>,
    <ore:dustPureGarnetRed>,
    <ore:dustPureGarnetYellow>,
    <ore:dustPureVinteum>,
    <ore:dustPureVanadiumMagnetite>,
    <ore:dustPureBasalticMineralSand>,
    <ore:dustPureGraniticMineralSand>,
    <ore:dustPureGarnetSand>,
    <ore:dustPureBastnasite>,
    <ore:dustPurePentlandite>,
    <ore:dustPureSpodumene>,
    <ore:dustPurePollucite>,
    <ore:dustPureLepidolite>,
    <ore:dustPureGlauconite>,
    <ore:dustPureGlauconiteSand>,
    <ore:dustPureVermiculite>,
    <ore:dustPureBentonite>,
    <ore:dustPureFullersEarth>,
    <ore:dustPurePitchblende>,
    <ore:dustPureMonazite>,
    <ore:dustPureMalachite>,
    <ore:dustPureMica>,
    <ore:dustPureTrona>,
    <ore:dustPureBarite>,
    <ore:dustPureGypsum>,
    <ore:dustPureAlunite>,
    <ore:dustPureDolomite>,
    <ore:dustPureWollastonite>,
    <ore:dustPureZeolite>,
    <ore:dustPureKyanite>,
    <ore:dustPureKaolinite>,
    <ore:dustPureTalc>,
    <ore:dustPureSoapstone>,
    <ore:dustPureNaquadah>,
    <ore:dustPureNaquadahEnriched>,
    <ore:dustPureOilsands>,
    <ore:dustPureTenorite>,
    <ore:dustPureCuprite>,
    <ore:dustPureBornite>,
    <ore:dustPureChalcocite>,
    <ore:dustPureEnargite>,
    <ore:dustPureTennantite>,
    <ore:dustPureNaquadriaticCompound>,
    <ore:dustPureEnrichedNaquadricCompound>,
    <ore:dustPureNaquadricCompound>,
    <ore:dustPureUraniumRadioactive>,
    <ore:dustPurePreciousMetal>,
    <ore:dustPureIridiumMetalResidue>,
    <ore:dustPureRarestMetalResidue>,
    <ore:dustPurePalladiumMetallicPowder>,
    <ore:dustPurePlatinumMetallicPowder>,
    <ore:dustPureZirkelite>,
    <ore:dustPurePrasiolite>
] as IOreDictEntry[];

val puredArray = [
    <ore:dustAluminium>.firstItem,
    <ore:dustBeryllium>.firstItem,
    <ore:dustBismuth>.firstItem,
    <ore:dustCobalt>.firstItem,
    <ore:dustCopper>.firstItem,
    <ore:dustGold>.firstItem,
    <ore:dustIridium>.firstItem,
    <ore:dustIron>.firstItem,
    <ore:dustLead>.firstItem,
    <ore:dustLithium>.firstItem,
    <ore:dustMolybdenum>.firstItem,
    <ore:dustNeodymium>.firstItem,
    <ore:dustNickel>.firstItem,
    <ore:dustNiobium>.firstItem,
    <ore:dustOsmium>.firstItem,
    <ore:dustPalladium>.firstItem,
    <ore:dustPlatinum>.firstItem,
    <ore:dustSilver>.firstItem,
    <ore:dustSulfur>.firstItem,
    <ore:dustTellurium>.firstItem,
    <ore:dustThorium>.firstItem,
    <ore:dustTin>.firstItem,
    <ore:dustUranium>.firstItem,
    <ore:dustUranium235>.firstItem,
    <ore:dustZinc>.firstItem,
    <ore:dustAlmandine>.firstItem,
    <ore:dustAndradite>.firstItem,
    <ore:dustAsbestos>.firstItem,
    <ore:dustBandedIron>.firstItem,
    <ore:dustBlueTopaz>.firstItem,
    <ore:dustBrownLimonite>.firstItem,
    <ore:dustCalcite>.firstItem,
    <ore:dustCassiterite>.firstItem,
    <ore:dustCassiteriteSand>.firstItem,
    <ore:dustChalcopyrite>.firstItem,
    <ore:dustChromite>.firstItem,
    <ore:dustCinnabar>.firstItem,
    <enderio:item_material:23>,
    <ore:dustCobaltite>.firstItem,
    <ore:dustCooperite>.firstItem,
    <ore:dustDiamond>.firstItem,
    <ore:dustEmerald>.firstItem,
    <ore:dustGalena>.firstItem,
    <ore:dustGarnierite>.firstItem,
    <ore:dustGreenSapphire>.firstItem,
    <ore:dustGrossular>.firstItem,
    <ore:dustIlmenite>.firstItem,
    <ore:dustRutile>.firstItem,
    <ore:dustBauxite>.firstItem,
    <ore:dustLazurite>.firstItem,
    <ore:dustMagnesite>.firstItem,
    <ore:dustMagnetite>.firstItem,
    <ore:dustMolybdenite>.firstItem,
    <ore:dustPhosphate>.firstItem,
    <ore:dustPowellite>.firstItem,
    <ore:dustPyrite>.firstItem,
    <ore:dustPyrolusite>.firstItem,
    <ore:dustPyrope>.firstItem,
    <ore:dustRockSalt>.firstItem,
    <ore:dustRuby>.firstItem,
    <ore:dustSalt>.firstItem,
    <ore:dustSaltpeter>.firstItem,
    <ore:dustSapphire>.firstItem,
    <ore:dustScheelite>.firstItem,
    <ore:dustSodalite>.firstItem,
    <ore:dustSpessartine>.firstItem,
    <ore:dustSphalerite>.firstItem,
    <ore:dustStibnite>.firstItem,
    <ore:dustTanzanite>.firstItem,
    <ore:dustTetrahedrite>.firstItem,
    <ore:dustTopaz>.firstItem,
    <ore:dustTungstate>.firstItem,
    <ore:dustUraninite>.firstItem,
    <ore:dustWulfenite>.firstItem,
    <ore:dustYellowLimonite>.firstItem,
    <ore:dustNetherQuartz>.firstItem,
    <ore:dustCertusQuartz>.firstItem,
    <ore:dustQuartzite>.firstItem,
    <ore:dustGraphite>.firstItem,
    <ore:dustJasper>.firstItem,
    <ore:dustLignite>.firstItem,
    <ore:dustOlivine>.firstItem,
    <ore:dustOpal>.firstItem,
    <ore:dustAmethyst>.firstItem,
    <ore:dustRedstone>.firstItem,
    <ore:dustLapis>.firstItem,
    <ore:dustDiatomite>.firstItem,
    <ore:dustNiter>.firstItem,
    <ore:dustTantalite>.firstItem,
    <ore:dustApatite>.firstItem,
    <ore:dustPhosphor>.firstItem,
    <ore:dustGarnetRed>.firstItem,
    <ore:dustGarnetYellow>.firstItem,
    <ore:dustVinteum>.firstItem,
    <ore:dustVanadiumMagnetite>.firstItem,
    <ore:dustBasalticMineralSand>.firstItem,
    <ore:dustGraniticMineralSand>.firstItem,
    <ore:dustGarnetSand>.firstItem,
    <ore:dustBastnasite>.firstItem,
    <ore:dustPentlandite>.firstItem,
    <ore:dustSpodumene>.firstItem,
    <ore:dustPollucite>.firstItem,
    <ore:dustLepidolite>.firstItem,
    <ore:dustGlauconite>.firstItem,
    <ore:dustGlauconiteSand>.firstItem,
    <ore:dustVermiculite>.firstItem,
    <ore:dustBentonite>.firstItem,
    <ore:dustFullersEarth>.firstItem,
    <ore:dustPitchblende>.firstItem,
    <ore:dustMonazite>.firstItem,
    <ore:dustMalachite>.firstItem,
    <ore:dustMica>.firstItem,
    <ore:dustTrona>.firstItem,
    <ore:dustBarite>.firstItem,
    <ore:dustGypsum>.firstItem,
    <ore:dustAlunite>.firstItem,
    <ore:dustDolomite>.firstItem,
    <ore:dustWollastonite>.firstItem,
    <ore:dustZeolite>.firstItem,
    <ore:dustKyanite>.firstItem,
    <ore:dustKaolinite>.firstItem,
    <ore:dustTalc>.firstItem,
    <ore:dustSoapstone>.firstItem,
    <ore:dustNaquadah>.firstItem,
    <ore:dustNaquadahEnriched>.firstItem,
    <ore:dustOilsands>.firstItem,
    <ore:dustTenorite>.firstItem,
    <ore:dustCuprite>.firstItem,
    <ore:dustBornite>.firstItem,
    <ore:dustChalcocite>.firstItem,
    <ore:dustEnargite>.firstItem,
    <ore:dustTennantite>.firstItem,
    <ore:dustNaquadriaticCompound>.firstItem,
    <ore:dustEnrichedNaquadricCompound>.firstItem,
    <ore:dustNaquadricCompound>.firstItem,
    <ore:dustUraniumRadioactive>.firstItem,
    <ore:dustPreciousMetal>.firstItem,
    <ore:dustIridiumMetalResidue>.firstItem,
    <ore:dustRarestMetalResidue>.firstItem,
    <ore:dustPalladiumMetallicPowder>.firstItem,
    <ore:dustPlatinumMetallicPowder>.firstItem,
    <ore:dustZirkelite>.firstItem,
    <ore:dustPrasiolite>.firstItem
] as IItemStack[];

for j, impures in impureArray{
    FluidToItem.transform(puredArray[j], <fluid:water>, [impures], false);
}

for k, pures in pureArray{
    FluidToItem.transform(puredArray[k], <fluid:distilled_water>, [pures], false);
}