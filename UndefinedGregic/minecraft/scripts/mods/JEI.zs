#priority -3001

import mods.jei.JEI;
import crafttweaker.item.IIngredient;

val rahArray = [
    <gregtech:cable:5074>,
    <gregtech:cable:5195>,
    <gregtech:cable:5071>,
    <gregtech:cable:5018>,
    <gregtech:cable:5026>,
    <gregtech:cable:5001>,
    <gregtech:cable:5051>,
    <gregtech:cable:5135>,
    <gregtech:cable:5307>,
    <gregtech:cable:2308>,
    <gregtech:cable:354>,
    <gregtech:cable:5237>,
    <enderio:item_capacitor_stellar>,
    <enderio:item_capacitor_totemic>,
    <enderio:item_capacitor_melodic>,
    <enderio:item_capacitor_crystalline>,
    <enderio:item_capacitor_grainy>,
    <metaitem:circuit.basic>,
    <metaitem:circuit.assembly.primitive>,
    <gregtech:meta_item_2:26001>,
    <thermalfoundation:material:261>,
    <thermalfoundation:material:130>,
    <thermalfoundation:material:131>,
    <thermalfoundation:material:133>,
    <thermalfoundation:material:128>,
    <thermalfoundation:material:129>,
    <thermalfoundation:material:68>,
    <thermalfoundation:ore:4>,
    <mekanism:otherdust:1>,
    <mekanism:sawdust>,
    <actuallyadditions:block_empowerer>,
    <gregtech:meta_tool:12>.withTag({"GT.ToolStats": {Material: "darmstadtium"}}),
] as IIngredient[];

for rahitems in rahArray{
    JEI.removeAndHide(rahitems);
}

val hidingCate = [
    "gregtech:assembly_line",
    "gregtech:circuit_assembler",
    "thermalexpansion.factorizer_combine",
    "thermalexpansion.factorizer_split",
    "thermalexpansion.furnace_ore",
    "thermalexpansion.furnace_pyrolysis",
    "thermalexpansion.pulverizer_petrotheum",
    "thermalexpansion.smelter",
    "thermalexpansion.smelter_pyrotheum",
    "appliedenergistics2.grinder",
    "actuallyadditions.crushing",
    "actuallyadditions.empowerer",
    "thermalexpansion.crucible",
    "thermalexpansion.crucible_lava",
] as string[];

for cates in hidingCate{
    JEI.hideCategory(cates);
}
