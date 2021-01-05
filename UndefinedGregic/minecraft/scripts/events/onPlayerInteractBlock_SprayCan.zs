#priority 500
#disable_search_tree

import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.event.IPlayerEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.contenttweaker.BlockState;
import crafttweaker.world.IBlockPos;
import crafttweaker.entity.IEntity;


/*
val targetBlockArray = [
    <block:gregtech:metal_casing_steel>.getBlock(),
] as IBlock[];

events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent){
    if (<ore:fixedEmptyCan> has event.player.currentItem && targetBlockArray has event.block){
        event.cancel();
    }
});

val peFluidBlock as IBlock;
val peEntity as IEntity;

events.onPlayerTick(function(event as PlayerTickEvent){
        if (peFluidBlock.fluid.name == "chloroform" && peEntity.getPosition3f()){
            <potion:potioncore:spin>.makePotionEffect(600, 2).performEffect(peEntity);
        }
    }
);
*/