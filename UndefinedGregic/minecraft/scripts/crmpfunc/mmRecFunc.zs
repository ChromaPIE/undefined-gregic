#priority 1999

import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

function MMRecipe(
    macname as string, recname as string, inp as IIngredient[], inpam as int[], oup as IItemStack[], finp as ILiquidStack[], foup as ILiquidStack[], dura as int, et as int){
        var mmRecipeBuilder = RecipeBuilder.newBuilder(macname~":"~recname, macname, dura);

        mmRecipeBuilder.addEnergyPerTickInput(et);
        if (!isNull(inp)){
            for i in 0 to inp.length{
                if (!isNull(inpam)){
                    for j in 0 to inp[i].items.length{
                        mmRecipeBuilder.addItemInput(inp[i].items[j]*inpam[i]);
                    }
                }
            }
        }
        if (!isNull(oup)){
            for outputs in oup{
                mmRecipeBuilder.addItemOutput(outputs);
            }
        } 
        if (!isNull(finp)){
            for fluidinputs in finp{
                mmRecipeBuilder.addFluidInput(fluidinputs);
            }
        }
        if (!isNull(foup)){
            for fluidoutputs in foup{
                mmRecipeBuilder.addFluidOutput(fluidoutputs);
            }
        }
        
        mmRecipeBuilder.build();
}

function MMRecipeGast(
    macname as string, recname as string, inp as IIngredient[], inpam as int[], oup as IItemStack[], finp as ILiquidStack[], finpIsGas as bool, finpam as int[], foup as ILiquidStack[], foupIsGas as bool, foupam as int[], dura as int, et as int){
        var mmRecipeBuilder = RecipeBuilder.newBuilder(macname~":"~recname, macname, dura);

        mmRecipeBuilder.addEnergyPerTickInput(et);
        if (!isNull(inp)){
            for i in 0 to inp.length{
                if (!isNull(inpam)){
                    for j in 0 to inp[i].items.length{
                        mmRecipeBuilder.addItemInput(inp[i].items[j]*inpam[i]);
                    }
                }
            }
        }
        if (!isNull(oup)){
            for outputs in oup{
                mmRecipeBuilder.addItemOutput(outputs);
            }
        }
        if (!isNull(finp)){
            for i, fluidinputs in finp{
                if (finpIsGas == true){
                    mmRecipeBuilder.addGasInput(fluidinputs.name, finpam[i]);
                } else {
                    mmRecipeBuilder.addFluidInput(fluidinputs*finpam[i]);
                }
            }
        }
        if (!isNull(foup)){
            for j, fluidoutputs in foup{
                if (foupIsGas == true){
                    mmRecipeBuilder.addGasOutput(fluidoutputs.name, foupam[j]);
                } else {
                    mmRecipeBuilder.addFluidOutput(fluidoutputs*foupam[j]);
                }
            }
        }
        
        mmRecipeBuilder.build();
}
