#priority -100

import mods.jei.JEI;
import crafttweaker.item.IItemStack;
import crafttweaker.formatting.IFormattedText;

val descItemArray = [
    <gtadditions:ga_transparent_casing>,
    <campfire:ash>,
    <advancedmortars:mortar:*>,
    <enderio:item_material:16>,
    <enderio:block_enderman_skull:2>,
] as IItemStack[];

val locaKeyArray = [
    "rfglass",
    "ash",
    "mortar",
    "endercrystal",
    "tees",
] as string[];

for i, items in descItemArray{
    JEI.addDescription(items,[game.localize("crmp.jei."~locaKeyArray[i]~".desc")]);
}
