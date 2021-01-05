#priority -100

import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import scripts.crmpfunc.mmRecFunc.MMRecipe;

var machineName = "info_reader";

RecipeBuilder.newBuilder(machineName + "_laas", machineName, 3600)
    .addEnergyPerTickInput(94)
    .addItemInput(<ore:paperBlack>)
    .addItemInput(<ore:circuitElite>, 9)
    .addItemInput(<meta_tile_entity:hull.iv>).setChance(0)
    .addItemInput(<metaitem:robot.arm.iv> * 2).setChance(0)
    .addItemInput(<ore:circuitElite>, 2).setChance(0)
    .addItemInput(<gregtech:multiblock_casing:2> * 4).setChance(0)
    .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:large_assembler"}))
    .build();
