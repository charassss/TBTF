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
val flint = <minecraft:flint>;

#extended crafting
val handheld_table = <extendedcrafting:handheld_table>;

#exnihilo creatio
val normal_mesh = <exnihilocreatio:item_mesh:1>;
val flint_mesh = <exnihilocreatio:item_mesh:2>;
val sieve = <exnihilocreatio:block_sieve>;
val wood_hammer = <exnihilocreatio:hammer_wood>;
val stone_hammer = <exnihilocreatio:hammer_stone>;

#excompressum
val compressed_cobblestone = <excompressum:compressed_block:1>;

#my mod items
val compressed_workbench = <tbtmats:compressed_workbench>;
val small_thread = <tbtmats:small_thread>;
val double_stick = <tbtmats:double_stick>;

#remove recipes
recipes.remove(handheld_table);
recipes.remove(normal_mesh);
recipes.remove(sieve);
recipes.remove(wood_hammer);
recipes.remove(flint_mesh);



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

#log + plank + slab + double_stick -> sieve
recipes.addShaped(sieve, [
    [log, null, log],
    [plank, slab, plank],
    [double_stick, null, double_stick]
]);

#compressed_cobblestone + small_thread + stick -> stone_hammer
recipes.addShaped(stone_hammer, [
    [null, compressed_cobblestone, small_thread],
    [null, stick, compressed_cobblestone],
    [stick, null, null]
]);

#flint + small_thread + normal_mesh -> flint_mesh
recipes.addShaped(flint_mesh, [
    [flint, null, flint],
    [small_thread, normal_mesh, small_thread],
    [flint, null, flint]
]);