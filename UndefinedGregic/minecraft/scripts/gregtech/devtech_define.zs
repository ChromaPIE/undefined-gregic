#priority 1998

import mods.devtech.machines.RegisterMachine;
import mods.devtech.machines.RegisterMachine.CreateSimpleMachine;
import mods.devtech.machines.Overlays;
import mods.devtech.IRecipeMap;
import mods.devtech.GUITextures;
import mods.devtech.OverlaySlot;
import mods.devtech.MoveType;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.material.MaterialCasting;

var disasser = IRecipeMap.recipeMapBuilder("disasser")
    .minInputs(1)
    .maxInputs(1)
    .minOutputs(1)
    .maxOutputs(9)
    .minFluidInputs(0)
    .maxFluidInputs(0)
    .minFluidOutputs(0)
    .maxFluidOutputs(0)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false, false, GUITextures.get("hammer_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_recycler"), MoveType.VERTICAL)
    .build();

CreateSimpleMachine(4321, "disasser.lv", disasser, Overlays.get("lathe"), 1);
CreateSimpleMachine(4322, "disasser.mv", disasser, Overlays.get("lathe"), 2);
CreateSimpleMachine(4323, "disasser.hv", disasser, Overlays.get("lathe"), 3);
CreateSimpleMachine(4324, "disasser.ev", disasser, Overlays.get("lathe"), 4);
CreateSimpleMachine(4325, "disasser.iv", disasser, Overlays.get("lathe"), 5);
CreateSimpleMachine(4326, "disasser.luv", disasser, Overlays.get("lathe"), 6);
CreateSimpleMachine(4327, "disasser.zpm", disasser, Overlays.get("lathe"), 7);
CreateSimpleMachine(4328, "disasser.uv", disasser, Overlays.get("lathe"), 8);

/*
CreateSimpleMachine(4329, "disasser.uhv", disasser, Overlays.get("lathe"), 9);
CreateSimpleMachine(4330, "disasser.uev", disasser, Overlays.get("lathe"), 10);
CreateSimpleMachine(4331, "disasser.uiv", disasser, Overlays.get("lathe"), 11);
CreateSimpleMachine(4332, "disasser.umv", disasser, Overlays.get("lathe"), 12);
CreateSimpleMachine(4333, "disasser.uxv", disasser, Overlays.get("lathe"), 13);
*/
