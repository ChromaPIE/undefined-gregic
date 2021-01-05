#priority -100

import crafttweaker.item.IItemStack;
import mods.thermalexpansion.Transposer.addFillRecipe;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Compactor.addPressRecipe;
import mods.thermalexpansion.Compactor.addStorageRecipe;
import mods.thermalexpansion.Compactor.removePressRecipe;
import mods.thermalexpansion.Compactor.removeStorageRecipe;
import mods.thermalexpansion.Pulverizer;
import mods.thermalexpansion.RedstoneFurnace;
import mods.thermalexpansion.Crucible;
import mods.thermalexpansion.Centrifuge;

val rg = <gtadditions:ga_transparent_casing>;
val rgDef = rg.definition;
val meti = <gregtech:meta_item_1>;
val gtDef = meti.definition;
val foundi = <thermalfoundation:material>;
val tfDef = foundi.definition;

//转置机
    addFillRecipe(rgDef.makeStack(1), rg, <fluid:borosilicate_glass>*144, 25600);
    addFillRecipe(rgDef.makeStack(2), rgDef.makeStack(1), <fluid:nickel>*144, 102400);
    addFillRecipe(rgDef.makeStack(3), rgDef.makeStack(2), <fluid:chrome>*144, 409600);
    addFillRecipe(rgDef.makeStack(4), rgDef.makeStack(3), <fluid:tungsten>*144, 1638400);
    addFillRecipe(rgDef.makeStack(5), rgDef.makeStack(4), <fluid:iridium>*144, 6553600);
    addFillRecipe(rgDef.makeStack(6), rgDef.makeStack(5), <fluid:osmiridium>*144, 26214400);
    addFillRecipe(<modularmachinery:itemmodularium>, <ore:ingotSignalum>.firstItem, <fluid:titanium>*9, 25600);
//

//磨粉机
    val pulvrem = [
        <minecraft:flower_pot>,
        <minecraft:stone_slab:4>,
        <minecraft:brick_stairs>,
        <minecraft:brick_block>,
        <minecraft:brick>,
        <ore:crystalFluix>.firstItem,
        <appliedenergistics2:sky_stone_block>,
        <minecraft:ender_pearl>,
        <thermalfoundation:ore_fluid:3>,
        <ore:oreTungsten>.firstItem,
    ] as IItemStack[];
    for pulvrems in pulvrem{
        Pulverizer.removeRecipe(pulvrems);
    }
//

//红石炉
    RedstoneFurnace.addRecipe(gtDef.makeStack(10071), gtDef.makeStack(2071), 2000);
    RedstoneFurnace.addRecipe(gtDef.makeStack(10047), gtDef.makeStack(2047), 2500);
    RedstoneFurnace.removeRecipe(<ore:dustTin>.firstItem);
//

//压缩机
    val comrem2 = [
        162,129,133,131,135,132,130,134,161,163,128,164,160
    ] as int[];
    for comrems2 in comrem2{
        removeStorageRecipe(tfDef.makeStack(comrems2));
    }
    val comrem = [
        10232,10053,10012,10971,10786,10976,10233,10014,10814,10972,10822,10973,10195,10801,10041,10060,10869,10302,10975,10200,10411,10001,10049,10135,10133,10069,10824,10745,10303,10134,10058,10424,10067,10021,10310,10127,10227,10047,10207,10743,10129,10985,10076,10051,10064,10056,10043,10905,10780,10072,10979,10989,10238,10307,10983,10055,10052,10981,10192,10022,10840,10421,10299,10234,10231,10311,10045,10912,10309,10818,10986,10941,10741,10940,10993,10797,10229,10230,10791,10974,10075,10074,10980,10070,10183,10228,10068,10077,10032,10883,10807,10059,10984,10016,10353,10235,10982,10066,10042,10308,10943,10300,10301,10742,10942,10304,10078,10987,10755,10859,10312,10002,8187,8206,8244,8190,8243,8209,8161,8247,8214,8085,8092,8202,8212,8122,8213,8154,8117,8128,8157
    ] as int[];
    for comrems in comrem{
        removeStorageRecipe(gtDef.makeStack(comrems));
    }
    removeStorageRecipe(<minecraft:nether_star>);
    addStorageRecipe(<contenttweaker:plate_obsidian>, <minecraft:obsidian>, 3000);
//

//离心机
    Centrifuge.removeRecipe(tfDef.makeStack(102));
    Centrifuge.removeRecipe(tfDef.makeStack(97));
    Centrifuge.removeRecipe(gtDef.makeStack(2094));
    Centrifuge.removeRecipe(tfDef.makeStack(100));
    Centrifuge.removeRecipe(tfDef.makeStack(98));
    Centrifuge.removeRecipe(tfDef.makeStack(103));
    Centrifuge.removeRecipe(gtDef.makeStack(2109));
    Centrifuge.removeRecipe(tfDef.makeStack(101));
//