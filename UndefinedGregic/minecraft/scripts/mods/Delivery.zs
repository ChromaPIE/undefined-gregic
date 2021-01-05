import mods.Delivery.Store;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val bigc = <lodsofemone:coin_big>;
val smac = <lodsofemone:coin_small>;
val mh = <tombstone:crafting_ingredient:3>;
val tb = <gregtech:meta_item_1:32000>;
val btb = <gregtech:meta_item_1:32001>;

val store_Default = "_store";
val store_Exchange = "货币兑换";
//val store_Diamond = "Diamond Trader";

Store.setStoreIcon(store_Default, <metaitem:credit.naquadah>);
Store.setStoreIcon(store_Exchange, <metaitem:credit.darmstadtium>);

val saleDefaultArray = [
    <actuallyadditions:item_misc:20>,
    <enderio:item_broken_spawner>,
    mh,
    mh * 2,
    mh * 5,
    mh * 10,
    mh * 32,
    <gregtech:meta_item_1:32009>
] as IIngredient[];

val costDefaultArray = [
    bigc.withTag({value: 7600 as long}),
    bigc.withTag({value: 7600 as long}),
    bigc.withTag({value: 4000 as long}),
    bigc.withTag({value: 8000 as long}),
    bigc.withTag({value: 20000 as long}),
    bigc.withTag({value: 40000 as long}),
    bigc.withTag({value: 128000 as long}),
    <cases:case>.withTag({caseName: "e5"}),
] as IItemStack[];

val saleExchangeArray = [
    tb,
    tb * 2,
    tb * 5,
    btb,
    btb * 2,
    btb * 5,
    <gregtech:meta_item_1:32002>,
    <gregtech:meta_item_1:32002> * 2,
    <gregtech:meta_item_1:32003>,
    <gregtech:meta_item_1:32003> * 2,
    <gregtech:meta_item_1:32004>,
    <gregtech:meta_item_1:32005>,
    <gregtech:meta_item_1:32006>,
    <gregtech:meta_item_1:32007>,
] as IIngredient[];

val costExchangeArray = [
    bigc.withTag({value: 125 as long}),
    bigc.withTag({value: 250 as long}),
    bigc.withTag({value: 625 as long}),
    bigc.withTag({value: 1000 as long}),
    bigc.withTag({value: 2000 as long}),
    bigc.withTag({value: 5000 as long}),
    bigc.withTag({value: 8000 as long}),
    bigc.withTag({value: 16000 as long}),
    bigc.withTag({value: 64000 as long}),
    bigc.withTag({value: 128000 as long}),
    bigc.withTag({value: 512000 as long}),
    bigc.withTag({value: 4096000 as long}),
    bigc.withTag({value: 32768000 as long}),
    bigc.withTag({value: 262144000 as long}),
] as IItemStack[];

for j, costds in costDefaultArray{
    Store.addTrade(costds, saleDefaultArray[j]);
}

for i, costes in costExchangeArray{
    Store.addTrade(costes, store_Exchange, saleExchangeArray[i]);
}
