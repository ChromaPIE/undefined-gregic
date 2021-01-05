#priority -2002

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import scripts.crmpfunc.gtRecFunc.DTDisass;

import scripts.sstatic.armArray;
import scripts.sstatic.conveyorArray;
import scripts.sstatic.emitterArray;
import scripts.sstatic.fielderArray;
import scripts.sstatic.motorArray;
import scripts.sstatic.pistonArray;
import scripts.sstatic.pumpArray;
import scripts.sstatic.sensorArray;
import scripts.sstatic.hullArray;
import scripts.sstatic.tieredCircArray;
import scripts.sstatic.conduitArray;

val voltName = ["ulv","lv","mv","hv","ev","iv","luv","zpm","uv","max"] as string[];
val voltNameMach = ["lv","mv","hv","ev","iv","luv","zpm","uv"] as string[];

var reinGlasses = [<minecraft:glass>] as IItemStack[];
for i in 0 to 7{
    reinGlasses += <gtadditions:ga_transparent_casing>.definition.makeStack(i);
}

//电解机 elec
val w1os = <ore:wireGtSingleOsmium>;
val elecWires = [<ore:wireGtSingleGold>,<ore:wireGtSingleSilver>,<ore:wireGtSingleElectrum>,<ore:wireGtSinglePlatinum>,w1os,w1os,w1os,w1os] as IOreDictEntry[];
val elecs = [
    <meta_tile_entity:gregtech:electrolyzer.lv>,
    <meta_tile_entity:gregtech:electrolyzer.mv>,
    <meta_tile_entity:gregtech:electrolyzer.hv>,
    <meta_tile_entity:gregtech:electrolyzer.ev>,
    <meta_tile_entity:gtadditions:electrolyzer.iv>,
    <meta_tile_entity:gtadditions:electrolyzer.luv>,
    <meta_tile_entity:gtadditions:electrolyzer.zpm>,
    <meta_tile_entity:gtadditions:electrolyzer.uv>
] as IItemStack[];
for i in 0 to 8{
    DTDisass(voltNameMach[i],elecs[i],[elecWires[i].firstItem*4,reinGlasses[i],tieredCircArray[i].firstItem*2,conduitArray[i]]);
}
//小化反 chem
val rotors = [<ore:rotorTin>,<ore:rotorBronze>,<ore:rotorSteel>,<ore:rotorStainlessSteel>,<ore:rotorTungstenSteel>,<ore:rotorChrome>,<ore:rotorIridium>,<ore:rotorOsmium>] as IOreDictEntry[];
val chems = [
    <meta_tile_entity:gregtech:chemical_reactor.lv>,
    <meta_tile_entity:gregtech:chemical_reactor.mv>,
    <meta_tile_entity:gregtech:chemical_reactor.hv>,
    <meta_tile_entity:gregtech:chemical_reactor.ev>,
    <meta_tile_entity:gtadditions:chemical_reactor.iv>,
    <meta_tile_entity:gtadditions:chemical_reactor.luv>,
    <meta_tile_entity:gtadditions:chemical_reactor.zpm>,
    <meta_tile_entity:gtadditions:chemical_reactor.uv>
] as IItemStack[];
for i in 0 to 8{
    DTDisass(voltNameMach[i],chems[i],[reinGlasses[i]*2,rotors[i].firstItem,conduitArray[i]*2,motorArray[i],tieredCircArray[i].firstItem*2]);
}

DTDisass("hv",<meta_tile_entity:diesel_generator.hv>,[pistonArray[2]*2,motorArray[2]*2,tieredCircArray[2].firstItem,<ore:gearStainlessSteel>.firstItem*2,<enderio:item_power_conduit>]);
DTDisass("hv",<meta_tile_entity:extruder.hv>,[<ore:wireGtQuadrupleKanthal>.firstItem*4,tieredCircArray[2].firstItem*2,pistonArray[2],<ore:pipeMediumStainlessSteel>.firstItem]);
DTDisass("hv",<meta_tile_entity:ore_washer.hv>,[<ore:rotorSteel>.firstItem*2,<gtadditions:ga_transparent_casing:1>,tieredCircArray[2].firstItem*2,motorArray[2],<enderio:item_power_conduit>*2]);
