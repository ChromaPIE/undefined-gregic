#priority -2001

import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import scripts.crmpfunc.gtRecFunc.GTRemove;

import scripts.sstatic.armArray;
import scripts.sstatic.conveyorArray;
import scripts.sstatic.emitterArray;
import scripts.sstatic.fielderArray;
import scripts.sstatic.motorArray;
import scripts.sstatic.pistonArray;
import scripts.sstatic.pumpArray;
import scripts.sstatic.sensorArray;

val sold = <fluid:soldering_alloy>;

GTRemove(assembler,[<ore:plateSteel>.firstItem*6,<ore:frameGtSteel>.firstItem],null,8);
GTRemove(assembler,[<ore:plateTungstenSteel>.firstItem*6,<ore:frameGtTungstenSteel>.firstItem],null,8);
GTRemove(assembler,[<gregtech:meta_item_1:19018>*4,<gregtech:meta_item_1:12196>],[<fluid:glue>*72],20);
GTRemove(assembler,[<ore:plateRhodiumPlatedPalladium>.firstItem*8,<gregtech:meta_item_1:32766>.withTag({Configuration: 8, not_consumed: 1 as byte})],null,16);
GTRemove(assembler,[<ore:wireGtDoubleCupronickel>.firstItem*8,<metaitem:mica_insulator_foil>*8],[<fluid:tin>*144],8);
GTRemove(assembler,[<ore:dustAluminoSilicateWool>.firstItem*12,<ore:wireGtDoubleCupronickel>.firstItem*8],[<fluid:tin>*144],8);

GTRemove(alloyer,[<minecraft:glass>*3,<gregtech:meta_item_2:32433>],null,4);
GTRemove(alloyer,[<gregtech:meta_item_1:2209>*3,<gregtech:meta_item_2:32433>],null,4);

GTRemove(ebf,[<ore:dustOsmium>.firstItem],null,120);
GTRemove(ebf,[<ore:dustEnderium>.firstItem],null,120);
GTRemove(ebf,[<ore:dustSilicon>.firstItem,<metaitem:circuit.integrated>],null,120);
GTRemove(ebf,[<ore:dustCarbon>.firstItem*2,<ore:dustSiliconDioxide>.firstItem],null,120);
GTRemove(ebf,[<ore:ingotIridium>.firstItem*3,<ore:ingotOsmium>.firstItem],[<fluid:helium>*1000],1920);

GTRemove(freezer,[<ore:ingotHotOsmium>.firstItem],null,120);

GTRemove(mixer,[<ore:dustRuby>.firstItem*9,<ore:dustRedstone>.firstItem*9],null,16);


val input1 = [<gregtech:meta_item_2:32492>,<gregtech:meta_item_2:32444>,<gregtech:meta_item_2:32485>*4,<gregtech:meta_item_2:16051>*32,<gregtech:meta_item_2:32482>*32,<gregtech:meta_item_2:32480>*64] as IItemStack[];
GTRemove(assembler,input1,[<fluid:tin>*288],1200);
GTRemove(assembler,input1,[sold*144],1200);

val meats = [<minecraft:porkchop>,<minecraft:beef>,<minecraft:rabbit>,<minecraft:chicken>,<minecraft:mutton>] as IItemStack[];
for meat in meats{GTRemove(grind,[meat],null,16);}

val tranc = <gtadditions:ga_transparent_casing>;
val trancDef = <gtadditions:ga_transparent_casing>.definition;
solider.findRecipe(16,[tranc],[<fluid:borosilicate_glass>*144]).remove();
solider.findRecipe(64,[trancDef.makeStack(1)],[<fluid:nickel>*144]).remove();
solider.findRecipe(256,[trancDef.makeStack(2)],[<fluid:chrome>*144]).remove();
solider.findRecipe(1024,[trancDef.makeStack(3)],[<fluid:tungsten>*144]).remove();
solider.findRecipe(4096,[trancDef.makeStack(4)],[<fluid:iridium>*144]).remove();
solider.findRecipe(16384,[trancDef.makeStack(5)],[<fluid:osmium>*144]).remove();


val conduit = [
    <enderio:item_endergy_conduit:1>,
    <enderio:item_endergy_conduit:3>,
    <enderio:item_power_conduit>,
    <enderio:item_endergy_conduit:6>,
    <enderio:item_endergy_conduit:7>,
    <enderio:item_power_conduit:2>,
    <enderio:item_endergy_conduit:8>,
    <gregtech:cable:5308>
] as IItemStack[];

val casing = [
    <gregtech:machine:501>,
    <gregtech:machine:502>,
    <gregtech:machine:503>,
    <gregtech:machine:504>,
    <gregtech:machine:505>,
    <gregtech:machine:506>,
    <gregtech:machine:507>,
    <gregtech:machine:508>
] as IItemStack[];

val allArray = [
    conveyorArray,
    fielderArray,
    motorArray,
    pistonArray,
    pumpArray,
    armArray,
    sensorArray,
    emitterArray
] as IItemStack[][];

var inputArray = [] as IItemStack[][];
var int0 = 0;
var int1 = 0;
while (int0 < 9 && int1 < 8) {
    if (int0 == 8){
        int0 = 0;
        int1 += 1;
        if (int1 == 8) {
            break;
        }
    } else {
        inputArray += [conduit[int0]*8,allArray[int1][int0]*2,casing[int0]] as IItemStack[];
        int0 += 1;
    }
}

val prevoltArray = [
    30,
    120,
    480,
    1920,
    7680,
    30720,
    122880,
    491520
] as int[];
var voltArray = [] as int[];
var int2 = 0;
while int2 < 8{
    for t in 0 to 8 {
        voltArray += prevoltArray[t] as int;
    }
    int2 += 1;
}

for i, inputc in inputArray{
    GTRemove(assembler,inputc,[sold*288],voltArray[i]);
}


val coppfl = <fluid:copper>;
val acoppfl = <fluid:annealed_copper>;
val stilmagst = <ore:stickSteelMagnetic>;
val neodmagst = <ore:stickNeodymiumMagnetic>;
val c1tung = <ore:cableGtSingleTungsten>;
val cablegt = [
    <ore:cableGtSingleTin>.firstItem,
    <ore:cableGtSingleCopper>.firstItem,
    <ore:cableGtSingleGold>.firstItem,
    <ore:cableGtSingleAluminium>.firstItem,
    <ore:cableGtSingleTungsten>.firstItem
] as IItemStack[];
val ringpump = [
    <ore:ringRubber>.firstItem,
    <ore:ringSiliconRubber>.firstItem,
    <ore:ringStyreneButadieneRubber>.firstItem
] as IItemStack[];
GTRemove(assembler,[<ore:roundSteel>.firstItem*8,conduit[0],stilmagst.firstItem],[coppfl*72],30);
GTRemove(assembler,[<ore:roundAluminium>.firstItem*8,conduit[1],stilmagst.firstItem],[coppfl*144],125);
GTRemove(assembler,[<ore:roundStainlessSteel>.firstItem*8,conduit[2],stilmagst.firstItem],[coppfl*288],500);
GTRemove(assembler,[<ore:roundTitanium>.firstItem*8,conduit[3],neodmagst.firstItem],[acoppfl*576],2000);
GTRemove(assembler,[<ore:roundTungstenSteel>.firstItem*8,c1tung.firstItem,neodmagst.firstItem],[acoppfl*1152],8000);
GTRemove(assembler,[<ore:screwSteel>.firstItem*3,conduit[0]*2,<mekanism:controlcircuit>,motorArray[0],pistonArray[0]],[sold*72],30);
GTRemove(assembler,[<ore:screwAluminium>.firstItem*3,conduit[1]*2,<contenttweaker:good_c>,motorArray[1],pistonArray[1]],[sold*144],125);
GTRemove(assembler,[<ore:screwStainlessSteel>.firstItem*3,conduit[2]*2,<mekanism:controlcircuit:1>,motorArray[2],pistonArray[2]],[sold*244],500);
GTRemove(assembler,[<ore:screwTitanium>.firstItem*3,conduit[3]*2,<contenttweaker:extreme_c>,motorArray[3],pistonArray[3]],[sold*576],2000);
GTRemove(assembler,[<ore:screwTungstenSteel>.firstItem*3,c1tung.firstItem*2,<mekanism:controlcircuit:2>,motorArray[4],pistonArray[4]],[sold*1152],8000);
GTRemove(assembler,[cablegt[0],motorArray[0]],[<fluid:rubber>*432],30);
GTRemove(assembler,[cablegt[1],motorArray[1]],[<fluid:rubber>*432],125);
GTRemove(assembler,[cablegt[2],motorArray[2]],[<fluid:rubber>*432],500);
GTRemove(assembler,[cablegt[3],motorArray[3]],[<fluid:rubber>*432],2000);
GTRemove(assembler,[cablegt[4],motorArray[4]],[<fluid:rubber>*432],8000);
for pumprings in ringpump{
    GTRemove(assembler,[motorArray[0],cablegt[0],<ore:pipeMediumBronze>.firstItem,<ore:screwTin>.firstItem,<ore:rotorTin>.firstItem,pumprings],[sold*72],30);
    GTRemove(assembler,[motorArray[1],cablegt[1],<ore:pipeMediumSteel>.firstItem,<ore:screwBronze>.firstItem,<ore:rotorBronze>.firstItem,pumprings],[sold*72],125);
    GTRemove(assembler,[motorArray[2],cablegt[2],<ore:pipeMediumStainlessSteel>.firstItem,<ore:screwSteel>.firstItem,<ore:rotorSteel>.firstItem,pumprings],[sold*72],500);
    GTRemove(assembler,[motorArray[3],cablegt[3],<ore:pipeMediumTitanium>.firstItem,<ore:screwStainlessSteel>.firstItem,<ore:rotorStainlessSteel>.firstItem,pumprings],[sold*72],2000);
    GTRemove(assembler,[motorArray[4],cablegt[4],<ore:pipeMediumTungstenSteel>.firstItem,<ore:screwTungstenSteel>.firstItem,<ore:rotorTungstenSteel>.firstItem,pumprings],[sold*72],8000);
}
