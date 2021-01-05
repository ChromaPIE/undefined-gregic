#priority 3000

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

//GTCE组件
static conveyorArray as IItemStack[] = [
    <metaitem:conveyor.module.lv>,
    <metaitem:conveyor.module.mv>,
    <metaitem:conveyor.module.hv>,
    <metaitem:conveyor.module.ev>,
    <metaitem:conveyor.module.iv>,
    <metaitem:conveyor.module.luv>,
    <metaitem:conveyor.module.zpm>,
    <metaitem:conveyor.module.uv>
];

static fielderArray as IItemStack[] = [
    <metaitem:field.generator.lv>,
    <metaitem:field.generator.mv>,
    <metaitem:field.generator.hv>,
    <metaitem:field.generator.ev>,
    <metaitem:field.generator.iv>,
    <metaitem:field.generator.luv>,
    <metaitem:field.generator.zpm>,
    <metaitem:field.generator.uv>
];

static motorArray as IItemStack[] = [
    <metaitem:electric.motor.lv>,
    <metaitem:electric.motor.mv>,
    <metaitem:electric.motor.hv>,
    <metaitem:electric.motor.ev>,
    <metaitem:electric.motor.iv>,
    <metaitem:electric.motor.luv>,
    <metaitem:electric.motor.zpm>,
    <metaitem:electric.motor.uv>
];

static pistonArray as IItemStack[] = [
    <metaitem:electric.piston.lv>,
    <metaitem:electric.piston.mv>,
    <metaitem:electric.piston.hv>,
    <metaitem:electric.piston.ev>,
    <metaitem:electric.piston.iv>,
    <metaitem:electric.piston.luv>,
    <metaitem:electric.piston.zpm>,
    <metaitem:electric.piston.uv>
];

static pumpArray as IItemStack[] = [
    <metaitem:electric.pump.lv>,
    <metaitem:electric.pump.mv>,
    <metaitem:electric.pump.hv>,
    <metaitem:electric.pump.ev>,
    <metaitem:electric.pump.iv>,
    <metaitem:electric.pump.luv>,
    <metaitem:electric.pump.zpm>,
    <metaitem:electric.pump.uv>
];

static armArray as IItemStack[] = [
    <metaitem:robot.arm.lv>,
    <metaitem:robot.arm.mv>,
    <metaitem:robot.arm.hv>,
    <metaitem:robot.arm.ev>,
    <metaitem:robot.arm.iv>,
    <metaitem:robot.arm.luv>,
    <metaitem:robot.arm.zpm>,
    <metaitem:robot.arm.uv>
];

static sensorArray as IItemStack[] = [
    <metaitem:sensor.lv>,
    <metaitem:sensor.mv>,
    <metaitem:sensor.hv>,
    <metaitem:sensor.ev>,
    <metaitem:sensor.iv>,
    <metaitem:sensor.luv>,
    <metaitem:sensor.zpm>,
    <metaitem:sensor.uv>
];

static emitterArray as IItemStack[] = [
    <metaitem:emitter.lv>,
    <metaitem:emitter.mv>,
    <metaitem:emitter.hv>,
    <metaitem:emitter.ev>,
    <metaitem:emitter.iv>,
    <metaitem:emitter.luv>,
    <metaitem:emitter.zpm>,
    <metaitem:emitter.uv>
];

static hullArray as IItemStack[] = [
    <meta_tile_entity:gregtech:hull.ulv>,
    <meta_tile_entity:gregtech:hull.lv>,
    <meta_tile_entity:gregtech:hull.mv>,
    <meta_tile_entity:gregtech:hull.hv>,
    <meta_tile_entity:gregtech:hull.ev>,
    <meta_tile_entity:gregtech:hull.iv>,
    <meta_tile_entity:gregtech:hull.luv>,
    <meta_tile_entity:gregtech:hull.zpm>,
    <meta_tile_entity:gregtech:hull.uv>,
    <meta_tile_entity:gregtech:hull.max>
];

static tieredCircArray as IOreDictEntry[] = [
    <ore:circuitBasic>,
    <ore:circuitGood>,
    <ore:circuitAdvanced>,
    <ore:circuitExtreme>,
    <ore:circuitElite>,
    <ore:circuitMaster>,
    <ore:circuitUltimate>,
    <ore:circuitSuperconductor>
];

static conduitArray as IItemStack[] = [
    <enderio:item_endergy_conduit:1>,
    <enderio:item_endergy_conduit:3>,
    <enderio:item_power_conduit>,
    <enderio:item_endergy_conduit:6>,
    <enderio:item_endergy_conduit:7>,
    <enderio:item_power_conduit:2>,
    <enderio:item_endergy_conduit:8>,
    <enderio:item_endergy_conduit:9>
];
