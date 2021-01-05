#priority 2001
#loader contenttweaker

import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.SoundType;
import mods.contenttweaker.Block;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

function fluidBoss(
    name as string, light as int, dens as int, temp as string, visc as int, isGas as bool, flumat as int, color as string){
        print("fluidBoss is now making : " + name);
        var fluidBuilder = VanillaFactory.createFluid(name, Color.fromHex(color));
        fluidBuilder.luminosity = light;
        fluidBuilder.density = dens;
        fluidBuilder.temperature = temp;
        fluidBuilder.viscosity = visc;
        fluidBuilder.gaseous = isGas;
        if (flumat == 1){
            fluidBuilder.material = <blockmaterial:lava>;
            fluidBuilder.stillLocation = "base:fluids/molten";
            fluidBuilder.flowingLocation = "base:fluids/molten_flowing";
        }
        fluidBuilder.register();
}

function fluidBossTex(
    name as string, light as int, dens as int, temp as string, visc as int, isGas as bool, hasSTex as bool, hasFTex as bool){
        print("fluidBossTex is now making : " + name);
        var fluidBuilder = VanillaFactory.createFluid(name, Color.fromHex(0));
        fluidBuilder.luminosity = light;
        fluidBuilder.density = dens;
        fluidBuilder.temperature = temp;
        fluidBuilder.viscosity = visc;
        fluidBuilder.gaseous = isGas;
        fluidBuilder.colorize = false;
        if(hasSTex){
            fluidBuilder.stillLocation = "contenttweaker:fluids/"~name~"_still";
        }
        if(hasFTex){
            fluidBuilder.flowingLocation = "contenttweaker:fluids/"~name~"_flow";
        }
        fluidBuilder.register();
}

function blockBoss(name as string, material as BlockMaterial, sound as SoundType, hardness as float, resis as float, toolcls as string, toollvl as int){
	print("blockBoss is now making : " + name);
	var blockBuilder = VanillaFactory.createBlock(name, material);
	blockBuilder.setBlockHardness(hardness); //硬度
	blockBuilder.setBlockSoundType(sound); //声音
	blockBuilder.setBlockResistance(resis); //爆炸抗性
    blockBuilder.setToolClass(toolcls); //工具类别
    blockBuilder.setToolLevel(toollvl); //工具等级
	blockBuilder.register();
}
