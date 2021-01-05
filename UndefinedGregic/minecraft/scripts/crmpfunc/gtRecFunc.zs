#priority 1999

import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;

import scripts.sstatic.hullArray;

function GTRecipePropt(
    rmap as RecipeMap, inp as IIngredient[], oup as IIngredient[], finp as ILiquidStack[], foup as ILiquidStack[], dura as int, eut as int, propv as int){
        var gtRecipeBuilder = rmap.recipeBuilder();
        var prog = [] as IIngredient[];
        for i in 0 to 33{
            prog += <metaitem:circuit.integrated>.withTag({Configuration: i});
        }

        if(!isNull(inp)){
            if (prog has inp[0].items[0]){
                gtRecipeBuilder.notConsumable(inp[0]);
                for i in 1 to inp.length{
                    gtRecipeBuilder.inputs([inp[i]]);
                }
            } else
            gtRecipeBuilder.inputs(inp);
        }
        if(!isNull(oup)){
            gtRecipeBuilder.outputs(oup);
        }
        if(!isNull(finp)){
            gtRecipeBuilder.fluidInputs(finp);
        }
        if(!isNull(foup)){
            gtRecipeBuilder.fluidOutputs(foup);
        }
        if(rmap.unlocalizedName == "blast_furnace"){
            gtRecipeBuilder.property("temperature", propv);
        }
        if(rmap.unlocalizedName == "implosion_compressor"){
            gtRecipeBuilder.property("explosives", propv);
        }

        gtRecipeBuilder.duration(dura).EUt(eut).buildAndRegister();
}

function GTRecipe(
    rmap as RecipeMap, inp as IIngredient[], oup as IIngredient[], finp as ILiquidStack[], foup as ILiquidStack[], dura as int, eut as int){
        var gtRecipeBuilder = rmap.recipeBuilder();
        var prog = [] as IIngredient[];
        for i in 0 to 33{
            prog += <metaitem:circuit.integrated>.withTag({Configuration: i});
        }

        if(!isNull(inp)){
            if (prog has inp[0].items[0]){
                gtRecipeBuilder.notConsumable(inp[0]);
                for i in 1 to inp.length{
                    gtRecipeBuilder.inputs([inp[i]]);
                }
            } else
            gtRecipeBuilder.inputs(inp);
        }
        if(!isNull(oup)){
            gtRecipeBuilder.outputs(oup);
        }
        if(!isNull(finp)){
            gtRecipeBuilder.fluidInputs(finp);
        }
        if(!isNull(foup)){
            gtRecipeBuilder.fluidOutputs(foup);
        }

        gtRecipeBuilder.duration(dura).EUt(eut).buildAndRegister();

        if(rmap.unlocalizedName == "mixer"){
            GTRecipePropt(lmixer,inp,oup,finp,foup,dura,eut,0);
        }
        if(rmap.unlocalizedName == "chemical_reactor"){
            GTRecipePropt(lchem,inp,oup,finp,foup,dura,eut,0);
        }
        if(rmap.unlocalizedName == "forge_hammer"){
            GTRecipePropt(lham,inp,oup,finp,foup,dura,eut,0);
        }
}

function GTRecipeProptNoco(
    rmap as RecipeMap, inp as IIngredient[], inpnoco as IIngredient[], oup as IIngredient[], finp as ILiquidStack[], foup as ILiquidStack[], dura as int, eut as int, propv as int){
        var gtRecipeBuilder = rmap.recipeBuilder();
        var prog = [] as IIngredient[];
        for i in 0 to 33{
            prog += <metaitem:circuit.integrated>.withTag({Configuration: i});
        }

        if(!isNull(inp)){
            if (prog has inp[0].items[0]){
                gtRecipeBuilder.notConsumable(inp[0]);
                for i in 1 to inp.length{
                    gtRecipeBuilder.inputs([inp[i]]);
                }
            } else
            gtRecipeBuilder.inputs(inp);
        }

        for nocos in inpnoco{
            gtRecipeBuilder.notConsumable(nocos);
        }

        if(!isNull(oup)){
            gtRecipeBuilder.outputs(oup);
        }
        if(!isNull(finp)){
            gtRecipeBuilder.fluidInputs(finp);
        }
        if(!isNull(foup)){
            gtRecipeBuilder.fluidOutputs(foup);
        }
        if(rmap.unlocalizedName == "blast_furnace"){
            gtRecipeBuilder.property("temperature", propv);
        }
        if(rmap.unlocalizedName == "implosion_compressor"){
            gtRecipeBuilder.property("explosives", propv);
        }

        gtRecipeBuilder.duration(dura).EUt(eut).buildAndRegister();
}

function GTRecipeNoco(
    rmap as RecipeMap, inp as IIngredient[], inpnoco as IIngredient[], oup as IIngredient[], finp as ILiquidStack[], foup as ILiquidStack[], dura as int, eut as int){
        var gtRecipeBuilder = rmap.recipeBuilder();
        var prog = [] as IIngredient[];
        for i in 0 to 33{
            prog += <metaitem:circuit.integrated>.withTag({Configuration: i});
        }

        if(!isNull(inp)){
            if (prog has inp[0].items[0]){
                gtRecipeBuilder.notConsumable(inp[0]);
                for i in 1 to inp.length{
                    gtRecipeBuilder.inputs([inp[i]]);
                }
            } else
            gtRecipeBuilder.inputs(inp);
        }

        for nocos in inpnoco{
            gtRecipeBuilder.notConsumable(nocos);
        }
        
        if(!isNull(oup)){
            gtRecipeBuilder.outputs(oup);
        }
        if(!isNull(finp)){
            gtRecipeBuilder.fluidInputs(finp);
        }
        if(!isNull(foup)){
            gtRecipeBuilder.fluidOutputs(foup);
        }

        gtRecipeBuilder.duration(dura).EUt(eut).buildAndRegister();

        if(rmap.unlocalizedName == "mixer"){
            GTRecipeProptNoco(lmixer,inp,inpnoco,oup,finp,foup,dura,eut,0);
        }
        if(rmap.unlocalizedName == "chemical_reactor"){
            GTRecipeProptNoco(lchem,inp,inpnoco,oup,finp,foup,dura,eut,0);
        }
        if(rmap.unlocalizedName == "forge_hammer"){
            GTRecipeProptNoco(lham,inp,inpnoco,oup,finp,foup,dura,eut,0);
        }
}

function GTRemove(
    rmap as RecipeMap, inp as IItemStack[], finp as ILiquidStack[], eut as int){
        rmap.findRecipe(eut, inp, finp).remove();
}

function DTDisass(
    oupHull as string, inp as IIngredient, oupEx as IItemStack[]){
        var disassBuilder = disass.recipeBuilder();
        val eutArray = [16,64,256,1024,4096,16384,32768,65536,262144,393216] as int[];
        val voltName = ["ulv","lv","mv","hv","ev","iv","luv","zpm","uv","max"] as string[];
        for i, hulls in hullArray{
            if (oupHull == voltName[i]){
                disassBuilder.outputs(hulls).EUt(eutArray[i]);
            }
        }

        disassBuilder.inputs(inp).outputs(oupEx).duration((oupEx.length+1)*200).buildAndRegister();
}
