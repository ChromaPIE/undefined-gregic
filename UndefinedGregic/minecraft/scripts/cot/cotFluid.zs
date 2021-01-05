#priority 2000
#loader contenttweaker

import scripts.crmpfunc.cotFunc.fluidBoss;
import scripts.crmpfunc.cotFunc.fluidBossTex;

/*
fluidBoss: 注册名、亮度、密度、温度、粘度、hex、是否气体、材料（1为岩浆）
name as string, light as int, dens as int, temp as string, visc as int, color as string, isGas as bool, flumat as int

fluidBossTex: 注册名、亮度、密度、温度、粘度、是否气体、静态材质（ _still 结尾）、动态材质（ _flow 结尾）
name as string, light as int, dens as int, temp as string, visc as int, isGas as bool, flumat as int, hasSTex as bool, hasFTex as bool
*/

fluidBossTex("distilled_water", 0, 1000, 300, 1000, false, true, true);
fluidBossTex("nerfed_cryotheum", 2, 2600, 190, 2600, false, true, true);
fluidBoss("energetic_silver", 15, 3000, 1300, 6000, false, 1, "A7C7E0");
fluidBoss("empovio", 15, 3000, 1300, 6000, false, 0, "D64479");
