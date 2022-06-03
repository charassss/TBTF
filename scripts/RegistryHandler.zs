import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.data.IData;

#init some values

#vanilla items
val stick = <minecraft:stick>;
val mcstring = <minecraft:string>;
val log = <ore:logWood>;
val plank = <ore:plankWood>;
val slab = <ore:slabWood>;

#extended crafting
val handheld_table = <extendedcrafting:handheld_table>;

#exnihilo creatio
val normal_mesh = <exnihilocreatio:item_mesh:1>;
val sieve = <exnihilocreatio:block_sieve>;

#my mod items
val compressed_workbench = <tbtmats:compressed_workbench>;
val small_thread = <tbtmats:small_thread>;
val double_stick = <tbtmats:double_stick>;

#remove recipes
recipes.remove(handheld_table);
recipes.remove(normal_mesh);
recipes.remove(sieve);



#add recipes

#stick + compressed_workbench -> handheld_table
recipes.addShaped(handheld_table,[
    [null, compressed_workbench],
    [stick, null]
]);

#string + small_thread -> normal_mesh
recipes.addShaped(normal_mesh, [
    [small_thread, mcstring, small_thread],
    [mcstring, small_thread, mcstring],
    [small_thread, mcstring, small_thread]
]);

#
recipes.addShaped(sieve, [
    [log, null, log],
    [plank, slab, plank],
    [double_stick, null, double_stick]
]);