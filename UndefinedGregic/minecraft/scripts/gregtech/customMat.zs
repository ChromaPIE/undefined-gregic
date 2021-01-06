#loader gregtech

import mods.gregtech.material.MaterialRegistry;

var materialList = MaterialRegistry.getAllMaterials();
val conductiveIron = MaterialRegistry.createIngotMaterial(500, "conductive_iron", 0xd5a4a1, "shiny", 2);
val energeticAlloy = MaterialRegistry.createIngotMaterial(501, "energetic_alloy", 0xf9853d, "shiny", 2);
val vibrantAlloy = MaterialRegistry.createIngotMaterial(502, "vibrant_alloy", 0x9ddb00, "shiny", 2);
val signalum = MaterialRegistry.createIngotMaterial(503, "signalum", 0xeb5f11, "shiny", 2);
val lumium = MaterialRegistry.createIngotMaterial(504, "lumium", 0xe2e992, "shiny", 2);
val vividAlloy = MaterialRegistry.createIngotMaterial(505, "vivid_alloy", 0x4dc6e5, "shiny", 2);
val stellarAlloy = MaterialRegistry.createIngotMaterial(506, "stellar_alloy", 0xe2e6e7, "shiny", 2);
val draconium = MaterialRegistry.createIngotMaterial(507, "draconium", 0xbe49ed, "dull", 2);

val pallaridium = MaterialRegistry.createIngotMaterial(508, "pallaridium", 0xd1d4e7, "shiny", 2, [<material:palladium>*1,<material:iridium>*1]);

conductiveIron.setCableProperties(32, 2, 0);
energeticAlloy.setCableProperties(128, 2, 0);
vibrantAlloy.setCableProperties(512, 2, 0);
lumium.setCableProperties(2048, 2, 0);
signalum.setCableProperties(8192, 2, 0);
vividAlloy.setCableProperties(32768, 2, 0);
stellarAlloy.setCableProperties(131072, 2, 0);
draconium.setCableProperties(524288, 2, 0);


MaterialRegistry.get("nickel").addFlags(["GENERATE_ROD", "GENERATE_LONG_ROD", "GENERATE_GEAR"]);
MaterialRegistry.get("conductive_iron").addFlags(["GENERATE_PLATE"]);
MaterialRegistry.get("pallaridium").addFlags(["GENERATE_PLATE", "GENERATE_DENSE", "GENERATE_GEAR", "SMELT_INTO_FLUID", "GENERATE_ROD"]);
