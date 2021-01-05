#priority -100

import mods.advancedmortars.Mortar;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val mota = ["wood", "stone", "gold", "iron", "diamond", "obsidian", "emerald"] as string[];
val ston = ["stone", "gold", "iron", "diamond", "obsidian", "emerald"] as string[];
val iron = ["iron", "diamond", "obsidian", "emerald"] as string[];
val diam = ["diamond", "obsidian", "emerald"] as string[];
val obsi = ["obsidian", "emerald"] as string[];
val emer = ["emerald"] as string[];

Mortar.addRecipe(mota, <ore:itemSawdust>.firstItem * 2, 8, [<ore:plankWood>]);
Mortar.addRecipe(mota, <ore:dustMeat>.firstItem, 8, [<ore:listAllmeatraw>]);
Mortar.addRecipe(mota, <ore:dustClay>.firstItem * 4, 8, [<ore:blockClay>]);
Mortar.addRecipe(mota, <ore:dustClay>.firstItem, 2, [<ore:itemClay>]);
Mortar.addRecipe(mota, <ore:dustWheat>.firstItem, 2, [<ore:cropWheat>]);
Mortar.addRecipe(mota, <ore:dustPaper>.firstItem * 2, 6, [<ore:sugarcane> * 3]);
Mortar.addRecipe(mota, <ore:dustPaper>.firstItem, 2, [<ore:paperEmpty>]);

Mortar.addRecipe(ston, <ore:dustStone>.firstItem, 12, [<minecraft:cobblestone>]);
Mortar.addRecipe(ston, <minecraft:flint>, 3, [<ore:gravel>]);
Mortar.addRecipe(ston, <minecraft:dye:15> * 4, 12, [<ore:bone>]);
Mortar.addRecipe(ston, <ore:dustSand>.firstItem, 3, [<ore:sand>]);

Mortar.addRecipe(iron, <minecraft:blaze_powder> * 3, 12, [<minecraft:blaze_rod>]);
Mortar.addRecipe(iron, <ore:dustCupronickel>.firstItem * 2, 4, [<ore:dustCopper>, <ore:dustNickel>]);
Mortar.addRecipe(iron, <ore:dustBrass>.firstItem * 4, 16, [<ore:dustCopper> * 3, <ore:dustZinc>]);
Mortar.addRecipe(iron, <gregtech:meta_item_1:2126> * 3, 9, [<ore:dustIron> * 2, <ore:dustNickel>]);
Mortar.addRecipe(iron, <gregtech:meta_item_1:2112> * 2, 4, [<ore:dustSilver>, <ore:dustGold>]);
Mortar.addRecipe(iron, <metaitem:energium_dust> * 9, 6, [<ore:dustRuby> * 9, <ore:dustRedstone> * 9]);
Mortar.addRecipe(iron, <threng:material:1>, 10, [<ore:dustFluix> * 2, <ore:dustCoal> * 2, <ore:dustSilicon>]);

Mortar.addRecipe(diam, <ore:dustRoseGold>.firstItem * 5, 21, [<ore:dustGold> * 4, <ore:dustCopper>]);
Mortar.addRecipe(diam, <ore:dustSterlingSilver>.firstItem * 5, 21, [<ore:dustSilver> * 4, <ore:dustCopper>]);
Mortar.addRecipe(diam, <ore:dustBismuthBronze>.firstItem * 5, 21, [<ore:dustBrass> * 4, <ore:dustBismuth>]);
Mortar.addRecipe(diam, <ore:dustKanthal>.firstItem * 3, 5, [<ore:dustIron>, <ore:dustAluminium>, <ore:dustChrome>]);
Mortar.addRecipe(diam, <mechanics:heavy_mesh> * 5, 4, [<ore:dustIron>, <ore:shardObsidian>, <ore:dustCoal>, <ore:itemSawdust>, <ore:itemClay>]);
Mortar.addRecipe(diam, <enderio:item_material:75>, 5, [<ore:dustBedrock>, <ore:dustCoal>]);
Mortar.addRecipe(diam, <ore:dustVibrantAlloy>.firstItem, 10, [<ore:dustEnergeticAlloy>, <ore:dustEnder>]);
Mortar.addRecipe(diam, <ore:dustEnergeticAlloy>.firstItem, 8, [<metaitem:energium_dust>, <ore:dustGold>, <ore:dustGlowstone>]);

Mortar.addRecipe(obsi, <ore:dustBlackBronze>.firstItem * 5, 19, [<ore:dustGold> ,<ore:dustSilver>, <ore:dustCopper> * 3]);
Mortar.addRecipe(obsi, <ore:dustYttriumBariumCuprate>.firstItem * 6, 30, [<ore:dustYttrium> ,<ore:dustBarium> * 2, <ore:dustCopper> * 3]);

Mortar.addRecipe(emer, <ore:dustBlackSteel>.firstItem * 5, 17, [<ore:dustNickel>, <ore:dustBlackBronze>, <ore:dustSteel> * 3]);

val inputArray = [
    <ore:ingotWroughtIron>,
    <ore:ingotAntimony>,
    <ore:ingotIronMagnetic>,
    <ore:ingotSteelMagnetic>,
    <ore:ingotAnnealedCopper>,
    <ore:gemCoke>,
    <ore:gemCharcoal>,
    <ore:gemLignite>,
    <ore:gemChippedCoke>,
    <ore:gemChippedLignite>,
    <ore:gemFlawedCoke>,
    <ore:gemFlawedLignite>,
    <ore:gemFlawlessCoke>,
    <ore:gemFlawlessLignite>,
    <ore:gemExquisiteCoke>,
    <ore:gemExquisiteLignite>,
    <ore:plateWroughtIron>,
    <ore:plateSteelMagnetic>,
    <ore:plateAnnealedCopper>,
    <ore:plateAntimony>,
    <ore:plateIronMagnetic>,
    <ore:ingotZinc>,
    <ore:ingotSteel>,
    <ore:ingotSilver>,
    <ore:ingotCopper>,
    <ore:ingotGold>,
    <ore:ingotTin>,
    <ore:plateInvar>,
    <ore:ingotBrass>,
    <ore:gemFlawedCoal>,
    <ore:gemChippedCoal>,
    <ore:plateElectrum>,
    <ore:plateNickel>,
    <ore:ingotIron>,
    <ore:plateLead>,
    <ore:gemCoal>,
    <ore:gemExquisiteCoal>,
    <ore:gemFlawlessCoal>,
    <ore:ingotBronze>
] as IOreDictEntry[];
val outputArray = [
    <ore:dustWroughtIron>.firstItem,
    <ore:dustAntimony>.firstItem,
    <ore:dustIronMagnetic>.firstItem,
    <ore:dustSteelMagnetic>.firstItem,
    <ore:dustAnnealedCopper>.firstItem,
    <ore:dustCoke>.firstItem,
    <ore:dustCharcoal>.firstItem,
    <ore:dustLignite>.firstItem,
    <ore:dustSmallCoke>.firstItem,
    <ore:dustSmallLignite>.firstItem,
    <ore:dustSmallCoke>.firstItem * 2,
    <ore:dustSmallLignite>.firstItem * 2,
    <ore:dustCoke>.firstItem * 2,
    <ore:dustLignite>.firstItem * 2,
    <ore:dustCoke>.firstItem * 4,
    <ore:dustLignite>.firstItem * 4,
    <ore:dustWroughtIron>.firstItem,
    <ore:dustSteelMagnetic>.firstItem,
    <ore:dustAnnealedCopper>.firstItem,
    <ore:dustAntimony>.firstItem,
    <ore:dustIronMagnetic>.firstItem,
    <ore:dustZinc>.firstItem,
    <ore:dustSteel>.firstItem,
    <ore:dustSilver>.firstItem,
    <ore:dustCopper>.firstItem,
    <ore:dustGold>.firstItem,
    <ore:dustTin>.firstItem,
    <ore:dustInvar>.firstItem,
    <ore:dustBrass>.firstItem,
    <ore:dustSmallCoal>.firstItem * 2,
    <ore:dustSmallCoal>.firstItem,
    <ore:dustElectrum>.firstItem,
    <ore:dustNickel>.firstItem,
    <ore:dustIron>.firstItem,
    <ore:dustLead>.firstItem,
    <ore:dustCoal>.firstItem * 4,
    <ore:dustCoal>.firstItem * 2,
    <ore:dustCoal>.firstItem,
    <ore:dustBronze>.firstItem
] as IItemStack[];
for i, outs in outputArray{
    Mortar.addRecipe(iron, outs, 6, [inputArray[i]]);
}

//avaritia hmm
mods.avaritia.ExtremeCrafting.remove(<moreavaritia:infinitympick>);
