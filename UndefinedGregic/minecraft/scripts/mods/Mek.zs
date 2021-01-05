#priority -100

import crafttweaker.item.IItemStack;
import mods.mekanism.enrichment;
import mods.mekanism.infuser;
import mods.mekanism.compressor;
import mods.mekanism.thermalevaporation;
import mods.mekanism.GasConversion;

GasConversion.register(<fluid:lithium>,<gas:lithium>);
GasConversion.unregister(<fluid:liquidlithium>,<gas:lithium>);

thermalevaporation.removeRecipe(<fluid:water>);
thermalevaporation.removeRecipe(<fluid:brine>);

//富集仓
enrichment.addRecipe(<metaitem:plant_ball> * 2, <mekanism:biofuel>);

val enriRemArray = [
    <gregtech:ore_nickel_0:*>,
    <draconicevolution:draconium_ore:*>,
    <gregtech:meta_item_1:2154>,
    <gregtech:meta_item_1:2156>,
    <gregtech:meta_item_1:2157>,
    <gregtech:meta_item_1:2065>,
    <gregtech:ore_redstone_0:*>,
    <gregtech:ore_gold_0:*>,
    <gregtech:ore_diamond_0:*>,
    <gregtech:ore_emerald_0:*>,
    <gregtech:ore_topaz_0:*>,
    <minecraft:obsidian>,
    <gregtech:ore_tanzanite_0:*>,
    <gregtech:meta_item_1:2101>, <minecraft:coal:1>,
    <gregtech:meta_item_1:2106>, <minecraft:coal>,
    <actuallyadditions:item_dust:*>,
    <mekanism:oreblock:*>,
    <minecraft:quartz_ore>,
    <gregtech:ore_sapphire_0:*>,
    <minecraft:emerald_ore>,
    <gregtech:ore_lead_0:*>,
    <minecraft:redstone_ore>,
    <minecraft:gravel>,
    <gregtech:meta_item_1:2196>*8,
    <gregtech:meta_item_1:2201>,
    <thermalfoundation:ore:*>,
    <gregtech:meta_item_1:2187>,
    <gregtech:meta_item_1:2190>,
    <gregtech:ore_uranium_0:*>,
    <gregtech:ore_amethyst_0:*>,
    <gregtech:meta_item_1:2216>,
    <mekanism:dirtydust:6>,
    <mekanism:otherdust:3>,
    <mekanism:otherdust>,
    <gregtech:ore_platinum_0:*>,
    <gregtech:ore_coal_0:*>,
    <gregtech:ore_copper_0:*>,
    <gregtech:ore_iridium_0:*>,
    <gregtech:ore_osmium_0:*>,
    <gregtech:ore_tin_0:*>,
    <minecraft:coal_ore>,
    <mekanism:saltblock>,
    <mekanism:sawdust>*8,
    <appliedenergistics2:quartz_ore>,
    <minecraft:lapis_ore>,
    <enderio:item_material:23>,
    <appliedenergistics2:material:3>,
    <gregtech:ore_lapis_0:*>,
    <gregtech:ore_apatite_0:*>,
    <minecraft:gold_ore>,
    <minecraft:gunpowder>,
    <minecraft:diamond_ore>,
    <enderio:item_material:32>,
    <enderio:item_material:33>,
    <thermalfoundation:material:*>,
    <gregtech:ore_silver_0:*>,
    <gregtech:ore_iron_0:*>,
    <appliedenergistics2:charged_quartz_ore>,
    <minecraft:iron_ore>,
    <gregtech:ore_ruby_0:*>,
    <mekanism:dirtydust:*>
] as IItemStack[];

for enrirem in enriRemArray{
    enrichment.removeRecipe(enrirem);
}

//锇压缩机
 compressor.addRecipe(<mekanism:enrichedalloy>, <gas:liquidosmium> * 36, <mekanism:controlcircuit>);
