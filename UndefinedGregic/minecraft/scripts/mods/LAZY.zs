#priority -100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.threng.Aggregator;
import mods.threng.Centrifuge;

import scripts.sstatic.armArray;
import scripts.sstatic.conveyorArray;
import scripts.sstatic.emitterArray;
import scripts.sstatic.fielderArray;
import scripts.sstatic.motorArray;
import scripts.sstatic.pistonArray;
import scripts.sstatic.pumpArray;
import scripts.sstatic.sensorArray;

Aggregator.removeRecipe(<threng:material:5>);
Aggregator.removeRecipe(<threng:material:1>);
Aggregator.addRecipe(<threng:material:5>,<ore:crystalPureFluix>,<mekanism:otherdust:5>,<ore:dustEnder>);
Aggregator.addRecipe(<contenttweaker:binder>*4,<metaitem:mica_sheet>,<ore:itemConduitBinder>,<ore:dustRubber>);

Centrifuge.removeRecipe(<appliedenergistics2:material:4>);
Centrifuge.removeRecipe(<appliedenergistics2:material:45>);
Centrifuge.removeRecipe(<appliedenergistics2:material:46>);
Centrifuge.addRecipe(<contenttweaker:dust_lapotron>,<metaitem:lapotron_crystal>);

val circs = [
    <ore:circuitBasic>,
    <ore:circuitGood>,
    <ore:circuitAdvanced>,
    <ore:circuitExtreme>,
    <ore:circuitElite>,
    <ore:circuitMaster>,
    <ore:circuitUltimate>,
    <ore:circuitSuperconductor>
] as IOreDictEntry[];

for i, motors in motorArray{
    Aggregator.addRecipe(motors, circs[i], <fluxnetworks:fluxcore>, <ore:gearVibrant>);
}

for k in 0 to 8{
    Aggregator.addRecipe(conveyorArray[k], circs[k], motorArray[k], <randomthings:plate_itemsealer>);
}

for l in 0 to 8{
    Aggregator.addRecipe(pistonArray[l], circs[l], motorArray[l], <ore:gearVibrant>);
}

for m in 0 to 8{
    Aggregator.addRecipe(armArray[m], circs[m], motorArray[m], pistonArray[m]);
}

for n, fields in fielderArray{
    Aggregator.addRecipe(fields, circs[n], <ore:itemPulsatingCrystal>, <appliedenergistics2:material:42>);
}

for o, emits in emitterArray{
    Aggregator.addRecipe(emits, circs[o], <appliedenergistics2:material:42>, <appliedenergistics2:part:280>);
}

for p, senses in sensorArray{
    Aggregator.addRecipe(senses, circs[p], <appliedenergistics2:material:41>, <contenttweaker:endercluster>);
}

for j in 0 to 2{
    Aggregator.addRecipe(pumpArray[j], circs[j], motorArray[j], <mekanism:transmitter:1>.withTag({tier: 0}));
}

for j in 2 to 4{
    Aggregator.addRecipe(pumpArray[j], circs[j], motorArray[j], <mekanism:transmitter:1>.withTag({tier: 1}));
}

for j in 4 to 6{
    Aggregator.addRecipe(pumpArray[j], circs[j], motorArray[j], <mekanism:transmitter:1>.withTag({tier: 2}));
}

for j in 6 to 8{
    Aggregator.addRecipe(pumpArray[j], circs[j], motorArray[j], <mekanism:transmitter:1>.withTag({tier: 3}));
}
