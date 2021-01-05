#priority -2020

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val renameArray = [
    "enderio.item_endergy_conduit_iron.name",
    "enderio.item_endergy_conduit_gold.name",
    "enderio.item_power_conduit.name",
    "enderio.item_endergy_conduit_electrum.name",
    "enderio.item_endergy_conduit_energetic_silver.name",
    "enderio.item_power_conduit_ender.name",
    "enderio.item_endergy_conduit_crystalline.name",
    "enderio.item_endergy_conduit_pink_slime.name",
    "enderio.item_endergy_conduit_stellar.name",
    
    "enderio.item_endergy_conduit_cobble.name",
    "enderio.item_endergy_conduit_alu.name",
    "enderio.item_endergy_conduit_copper.name",
    "enderio.item_endergy_conduit_silver.name",
    "enderio.item_power_conduit_enhanced.name",
    "enderio.item_endergy_conduit_melodic.name",

    "tile.Transmitter.BasicUniversalCable.name",
    "tile.Transmitter.AdvancedUniversalCable.name",
    "tile.Transmitter.EliteUniversalCable.name",
    "tile.Transmitter.UltimateUniversalCable.name",

    "item.item_material.gear_wood.name",
    "item.item_material.gear_stone.name",
    "item.item_material.gear_iron.name",
    "item.item_material.gear_energized.name",
    "item.item_material.gear_vibrant.name",
    "item.item_material.gear_darksteel.name",

    "item.clover.name",
    "tile.block_enderman_skull.tormented.name",

    "tile.threng:machine0.name",
    "threng.container.aggregator",
    "threng.int.jei.category.aggregator",
    "tile.campfire.name",
    "tile.ash.name",
    "tile.block_wolframium_ore.name",

    "crmp.jei.rfglass.desc",
    "crmp.jei.ash.desc",
    "crmp.jei.mortar.desc",
    "crmp.jei.endercrystal.desc",
    "crmp.jei.tees.desc",
] as string[];

val nameZHCNArray = [
    "低压能量导管 [LV]",
    "中压能量导管 [MV]",
    "高压能量导管 [HV]",
    "超高压能量导管 [EV]",
    "强导压能量导管 [IV]",
    "剧差压能量导管 [LuV]",
    "零点压能量导管 [ZPM]",
    "极限压能量导管 [UV]",
    "上限压能量导管 [MAX]",

    "超低压能量导管 [ULV]",
    "次中压能量导管 [IMV]",
    "强高压能量导管 [SV]",
    "极高压能量导管 [PHV]",
    "涌流压能量导管 [SuV]",
    "谐律压能量导管 [RV]",

    "极高压通用线缆 [PHV]",
    "强导压通用线缆 [IV]",
    "剧差压通用线缆 [LuV]",
    "零点压通用线缆 [ZPM]",

    "木质传动齿轮",
    "石质传动齿轮",
    "铁质传动齿轮",
    "充能传动齿轮",
    "脉冲传动齿轮",
    "玄钢传动齿轮",

    "补给包裹",
    "禁锢末影侵蚀头颅",

    "逻辑组装机",
    "逻辑组装机",
    "逻辑组装机",
    "简易营火",
    "余灰",
    "簇生钨矿石",

    "以高级合金板右击聚能石英玻璃来将其强化为强化玻璃。",
    "右键以收集这些余灰。",
    "用这样原始的工具进行研磨混合是个力气活。\n如果你发现自己似乎没力气捣下研杵了，记得先吃点东西。",
    "用充能水晶右击禁锢末影侵蚀头颅以获取末影水晶。",
    "末影之星拥有极强的同化效力。以其右击凋灵骷髅头颅将其转化为禁锢末影侵蚀头颅。\n \n侵蚀之力消耗殆尽时，禁锢末影侵蚀头颅会衰变为普通的，无法从末影人身上直接获取的末影人头颅。此时对其使用末影晶簇即可使效力被再次激活。"
] as string[];

val nameENUSArray = [
    "Energy Conduit (LV)",
    "Energy Conduit (MV)",
    "Energy Conduit (HV)",
    "Energy Conduit (EV)",
    "Energy Conduit (IV)",
    "Energy Conduit (LuV)",
    "Energy Conduit (ZPM)",
    "Energy Conduit (UV)",
    "Energy Conduit (MAX)",

    "Energy Conduit (ULV)",
    "Energy Conduit (IMV)",
    "Energy Conduit (SV)",
    "Energy Conduit (PHV)",
    "Energy Conduit (SuV)",
    "Energy Conduit (RV)",

    "Universal Cable (PHV)",
    "Universal Cable (IV)",
    "Universal Cable (LuV)",
    "Universal Cable (ZPM)",

    "Primitive Transmission Gear",
    "Hardened Transmission Gear",
    "Metallic Transmission Gear",
    "Energized Transmission Gear",
    "Vibrant Transmission Gear",
    "Dark Transmission Gear",

    "Supply Package",
    "Tormented Ender-Eroded Skull",

    "Logic Assembler",
    "Logic Assembler",
    "Logic Assembler",
    "Simple Campfire",
    "Ash Residue",
    "Tufted Tungsten Ore",

    "Right-click the Vibrant Quartz Glass with Advanced Alloy Plates to make the Reinforced Glass.",
    "Right-click to collect these ashes.",
    "You'll need to get something to eat before continuing to deal with such a primitive tool\nif you find yourself not being able to grind and mix things with it anymore.",
    "Acquired by right-clicking the Tormented Ender-Eroded Skull with the Vibrant Crystal.",
    "Ender Star has a super strong kind of assimilating effect enough to erode the Wither Skeleton Skull into Tormented Ender-Eroded Skull.\n \nIt decays into the regular Enderman Skull, which can't be obtained in conventional ways, when the effect fades out. Use the Ender Cluster on it to establish a reactivation."
] as string[];

for i, item in renameArray{
    game.setLocalization("zh_cn", item, nameZHCNArray[i]);
    game.setLocalization("en_us", item, nameENUSArray[i]);
}
