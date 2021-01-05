#priority -99

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val odRemArray = [
    <ore:tungstenIngot>,
    <ore:ingotTin>,
    <ore:dustTin>,
] as IOreDictEntry[];

val itemRemArray = [
    <endreborn:item_ingot_wolframium>,
    <mekanism:ingot:6>,
    <enderio:item_material:27>,
] as IItemStack[];

val odAddArray = [
    <ore:ingotConductiveChrome>,
    <ore:nuggetConductiveChrome>,
    <ore:roundConductiveChrome>,
    <ore:ingotFluxedElectrum>,
    <ore:stickFluxedElectrum>,
    <ore:craftingToolWrenchAlt>,
    <ore:craftingToolWrenchAlt>,
    <ore:craftingToolWrenchAlt>,
    <ore:craftingToolWrenchAlt>,
    <ore:circuitGood>,
    <ore:circuitExtreme>,
    <ore:circuitMaster>,
    <ore:circuitSuperconductor>,
    <ore:circuitInfinite>,
    <ore:circuitPrimitive>,
    <ore:fusedGlass>,

    <ore:dustQuartz>,
    <ore:dustQuartz>,

    <ore:ingotChromium>,
    <ore:ingotCesium>,

    <ore:gemCinnabar>,
    <ore:itemCinnabar>,
    <ore:crystalCinnabar>,

    <ore:dyeBlue>,
    <ore:dyeBlue>,

    <ore:ingotAluminum>,
    <ore:stickAluminum>,
    <ore:gearAluminum>,
    <ore:dustAluminum>,
    <ore:nuggetAluminum>,
    <ore:blockAluminum>,
    <ore:dustAluminium>,
    <ore:plateAluminium>,

    <ore:blockGlassHardened>,
    <ore:fusedQuartz>,

    <ore:blockCosmicNeutronium>,
    <ore:ingotCosmicNeutronium>,
    <ore:nuggetCosmicNeutronium>,
    <ore:dustTinyCosmicNeutronium>,
    <ore:gearCosmicNeutronium>,
    <ore:plateCosmicNeutronium>,
    <ore:blockNeutronium>,
    <ore:ingotNeutronium>,
    <ore:nuggetNeutronium>,
    <ore:dustTinyNeutronium>,
    <ore:dustTinyCosmicNeutronium>,
    <ore:oreTungsten>,
    <ore:blockTungsten>,
    <ore:plateObsidian>,
    <ore:dustEnder>,

    <ore:cableGtSingleTungsten>,
    <ore:cableGtSingleVanadiumGallium>,
    <ore:cableGtSingleTin>,
    <ore:cableGtSingleCopper>,
    <ore:cableGtSingleGold>,
    <ore:cableGtSingleAluminium>,
    <ore:cableGtSinglePlatinum>,
    <ore:cableGtSingleNiobiumTitanium>,
    <ore:cableGtSingleNaquadah>,
    <ore:wireGtQuadrupleNaquadahAlloy>,
    <ore:wireGtSingleSuperconductor>,
    <ore:cableGtSingleRedAlloy>,

    <ore:listAllmeatraw>,
    <ore:listAllmeatraw>,
    <ore:listAllmeatraw>,
    <ore:listAllmeatraw>,
    <ore:listAllmeatraw>,
    <ore:itemKnife>,
    <ore:itemKnife>,
    <ore:itemKnife>,

    <ore:dyeBlue>
] as IOreDictEntry[];

val itemAddArray = [
    <contenttweaker:conductive_chrome>,
    <contenttweaker:conductive_chrome_nugget>,
    <contenttweaker:conductive_chrome_ball>,
    <contenttweaker:fluxed_elec>,
    <contenttweaker:fluxed_elec_stick>,
    <gregtech:meta_tool:8>.withEmptyTag(),
    <gregtech:meta_tool:29>,
    <gregtech:meta_tool:30>,
    <gregtech:meta_tool:31>,
    <contenttweaker:good_c>,
    <contenttweaker:extreme_c>,
    <contenttweaker:master_c>,
    <contenttweaker:superconductor_c>,
    <contenttweaker:infinite_c>,
    <actuallyadditions:item_crystal>,
    <appliedenergistics2:quartz_vibrant_glass>,

    <gregtech:meta_item_1:2201>,
    <enderio:item_material:33>,

    <gregtech:meta_item_1:10016>,
    <gregtech:meta_item_1:10010>,

    <thermalfoundation:material:866>,
    <gregtech:meta_item_1:8103>,
    <gregtech:meta_item_1:8103>,

    <gregtech:meta_item_1:2216>,
    <actuallyadditions:item_dust:4>,

    <gregtech:meta_item_1:10001>,
    <gregtech:meta_item_1:14001>,
    <gregtech:meta_item_2:26001>,
    <gregtech:meta_item_1:2001>,
    <gregtech:meta_item_1:9001>,
    <gregtech:compressed_0>,
    <thermalfoundation:material:68>,
    <thermalfoundation:material:324>,

    <appliedenergistics2:quartz_glass>,
    <appliedenergistics2:quartz_glass>,

    <gregtech:compressed_27:12>,
    <gregtech:meta_item_1:10993>,
    <gregtech:meta_item_1:9993>,
    <gregtech:meta_item_1:993>,
    <gregtech:meta_item_2:26993>,
    <gregtech:meta_item_1:12993>,
    <avaritia:block_resource>,
    <avaritia:resource:4>,
    <avaritia:resource:3>,
    <avaritia:resource:2>,
    <avaritia:resource:2>,
    <endreborn:block_wolframium_ore>,
    <endreborn:block_wolframium>,
    <contenttweaker:plate_obsidian>,
    <gregtech:meta_item_1:2218>,

    <mekanism:transmitter>.withTag({tier: 1}),
    <mekanism:transmitter>.withTag({tier: 2}),
    <enderio:item_endergy_conduit:1>,
    <enderio:item_endergy_conduit:3>,
    <enderio:item_power_conduit>,
    <enderio:item_endergy_conduit:6>,
    <enderio:item_endergy_conduit:7>,
    <enderio:item_power_conduit:2>,
    <enderio:item_endergy_conduit:8>,
    <enderio:item_endergy_conduit:9>,
    <enderio:item_endergy_conduit:11>,
    <enderio:item_endergy_conduit>,

    <minecraft:mutton>,
    <minecraft:rabbit>,
    <minecraft:chicken>,
    <minecraft:beef>,
    <minecraft:porkchop>,
    <appliedenergistics2:nether_quartz_cutting_knife>,
    <appliedenergistics2:certus_quartz_cutting_knife>,
    <actuallyadditions:item_knife>,

    <futureminecraf:bluedye>
] as IItemStack[];


for i, itemsadd in itemAddArray{
    odAddArray[i].add(itemsadd);
}

for j, itemsrem in itemRemArray{
    odRemArray[j].remove(itemsrem);
}

val aluminumOreDef = <gregtech:ore_aluminium_0>.definition;
    for k in 0 to 14{
        <ore:oreAluminum>.add(aluminumOreDef.makeStack(k));
    }

<ore:itemResin>.add(<metaitem:rubber_drop>);
<ore:materialResin>.add(<metaitem:rubber_drop>);

<ore:itemCarbonFibre>.add(<metaitem:carbon.fibers>);
<ore:itemCarbonFiber>.add(<metaitem:carbon.fibers>);
<ore:itemCarbonMesh>.add(<metaitem:carbon.mesh>);
<ore:itemRawCarbonMesh>.add(<metaitem:carbon.mesh>);
<ore:plateCarbon>.add(<metaitem:carbon.plate>);
<ore:plateAdvancedAlloy>.add(<metaitem:plate.advanced_alloy>);

val gtPumpDef = <gregtech:meta_item_1>.definition;
    for l in 32610 to 32618{
        <ore:gtPump>.add(gtPumpDef.makeStack(l));
    }

val gtMotorDef = <gregtech:meta_item_1>.definition;
    for m in 32600 to 32605{
        <ore:gtMotor>.add(gtMotorDef.makeStack(m));
    }

val gtMotorDef2 = <gregtech:meta_item_1>.definition;
    for n in 32606 to 32609{
        <ore:gtMotor>.add(gtMotorDef2.makeStack(n));
    }

val gtConveyorDef = <gregtech:meta_item_1>.definition;
    for o in 32630 to 32638{
        <ore:gtConveyor>.add(gtConveyorDef.makeStack(o));
    }

val gtPistonDef = <gregtech:meta_item_1>.definition;
    for p in 32640 to 32648{
        <ore:gtPiston>.add(gtPistonDef.makeStack(p));
    }

val gtArmDef = <gregtech:meta_item_1>.definition;
    for q in 32650 to 32658{
        <ore:gtArm>.add(gtArmDef.makeStack(q));
    }

val gtForcefielderDef = <gregtech:meta_item_1>.definition;
    for r in 32670 to 32678{
        <ore:gtForcefielder>.add(gtForcefielderDef.makeStack(r));
    }

val gtEmitterDef = <gregtech:meta_item_1>.definition;
    for s in 32680 to 32688{
        <ore:gtEmitter>.add(gtEmitterDef.makeStack(s));
    }

val gtSensorDef = <gregtech:meta_item_1>.definition;
    for t in 32690 to 32698{
        <ore:gtSensor>.add(gtSensorDef.makeStack(t));
    }

//杀电路矿辞
val circuitOD = [
    <ore:circuitUltimate>,
    <ore:circuitSuperconductor>,
    <ore:circuitElite>,
    <ore:circuitExtreme>,
    <ore:circuitGood>,
    <ore:circuitBasic>,
    <ore:circuitAdvanced>,
    <ore:circuitMaster>,
    <ore:circuitInfinite>,
    <ore:circuitPrimitive>
] as IOreDictEntry[];

val circuitMeta = [
    [
        <metaitem:circuit.computer.crystal>,
        <metaitem:circuit.mainframe.quantum>,
        <metaitem:circuit.resonatic.zpm>,
        <metaitem:circuit.wetware_assembly>
    ],
    [
        <metaitem:circuit.wetware_super_computer>,
        <metaitem:circuit.resonatic.uv>,
        <metaitem:circuit.mainframe.crystal>
    ],
    [
        <metaitem:circuit.resonatic.iv>,
        <metaitem:circuit.assembly.quantum>,
        <metaitem:circuit.processor.crystal>,
        <metaitem:circuit.computer.nano>,
        <metaitem:circuit.mainframe.micro>,
        <metaitem:circuit.crystal_processor>,
        <metaitem:circuit.data_control>
    ],
    [
        <metaitem:circuit.quantum_processor>,
        <metaitem:circuit.nano_processor_assembly>,
        <metaitem:circuit.resonatic.ev>,
        <metaitem:circuit.computer.micro>,
        <metaitem:circuit.mainframe.refined>
    ],
    [
        <metaitem:circuit.resonatic.mv>,
        <metaitem:circuit.processor.micro>,
        <metaitem:circuit.assembly.refined>,
        <metaitem:circuit.assembly.electronic>,
        <metaitem:circuit.assembly.primitive>,
        <metaitem:circuit.good>,
        <metaitem:circuit.advanced>
    ],
    [
        <metaitem:circuit.basic_electronic>,
        <metaitem:circuit.basic>,
        <metaitem:circuit.resonatic.lv>,
        <metaitem:circuit.processor.refined>,
        <metaitem:circuit.advanced_parts>
    ],
    [
        <metaitem:circuit.nano_processor>,
        <metaitem:circuit.processor_assembly>,
        <metaitem:circuit.resonatic.hv>,
        <metaitem:circuit.computer.refined>,
        <metaitem:circuit.computer.electronic>
    ],
    [
        <metaitem:circuit.energy_flow>,
        <metaitem:circuit.wetware_processor>,
        <metaitem:circuit.resonatic.luv>,
        <metaitem:circuit.computer.quantum>,
        <metaitem:circuit.mainframe.nano>
    ],
    [
        <metaitem:circuit.wetware_mainframe>,
        <metaitem:circuit.resonatic.max>,
    ],
    [
        <metaitem:circuit.vacuum_tube>,
        <metaitem:circuit.resonatic.ulv>
    ]
] as IIngredient[][];

for i, cods in circuitOD{
    cods.removeItems(circuitMeta[i]);
}
