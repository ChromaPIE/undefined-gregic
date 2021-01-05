#priority -100

import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import scripts.crmpfunc.mmRecFunc.MMRecipeGast;

val fss = "fss";

MMRecipeGast(
    fss,"mektritium_to_gttritium",
    [<rftools:dimensional_shard>],
    [1],
    null,
    [<fluid:tritium>],true,[72],
    [<fluid:tritium>],false,[65],
    80,6656
);
