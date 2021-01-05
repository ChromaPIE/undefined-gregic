#priority 2000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.gregtech.recipe.RecipeMap;

//regular
global assembler as RecipeMap = RecipeMap.getByName("assembler"); //组装机
global canner as RecipeMap = RecipeMap.getByName("fluid_canner"); //装罐机
global solider as RecipeMap = RecipeMap.getByName("fluid_solidifier"); //流体固化机
global freezer as RecipeMap = RecipeMap.getByName("vacuum_freezer"); //真空冷冻机
global alloyer as RecipeMap = RecipeMap.getByName("alloy_smelter"); //合金炉
global mixer as RecipeMap = RecipeMap.getByName("mixer"); //搅拌机
global ebf as RecipeMap = RecipeMap.getByName("blast_furnace"); //电力高炉
global abf as RecipeMap = RecipeMap.getByName("blast_alloy"); //工业合金炉
global implo as RecipeMap = RecipeMap.getByName("implosion_compressor"); //聚爆压缩机
global grind as RecipeMap = RecipeMap.getByName("macerator"); //研磨机
global distill as RecipeMap = RecipeMap.getByName("distillery"); //蒸馏室
global electro as RecipeMap = RecipeMap.getByName("electrolyzer"); //电解机
global centri as RecipeMap = RecipeMap.getByName("centrifuge"); //离心机
global extractf as RecipeMap = RecipeMap.getByName("fluid_extractor"); //流体提取机
global engrave as RecipeMap = RecipeMap.getByName("laser_engraver"); //蚀刻机
global lathe as RecipeMap = RecipeMap.getByName("lathe"); //车床
global extrude as RecipeMap = RecipeMap.getByName("extruder"); //压模器
global unpack as RecipeMap = RecipeMap.getByName("unpacker"); //解包器

//multiblock
global lmixer as RecipeMap = RecipeMap.getByName("large_mixer"); //大搅拌
global lchem as RecipeMap = RecipeMap.getByName("large_chemical_reactor"); //大化反
global lham as RecipeMap = RecipeMap.getByName("large_forge_hammer"); //大锻造

//devtech
global disass as RecipeMap = RecipeMap.getByName("disasser"); //拆卸机
