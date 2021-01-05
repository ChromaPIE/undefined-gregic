#packmode normal
#priority -100

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val toAdd as string[IIngredient] = {
    <contenttweaker:c_coil> : game.localize("contenttweaker.c_coil.tooltips"),
};

val warning as string[IIngredient] = {

};

val praise as string[IIngredient] = {

};

for item in toAdd{
    item.addTooltip(format.white(toAdd[item]));
}

for item in warning{
    item.addTooltip(format.red(warning[item]));
}

for item in praise{
    item.addTooltip(format.gold(praise[item]));
}
