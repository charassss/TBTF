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

#other mod items
val handheld_table = <extendedcrafting:handheld_table>;
val normal_mesh = <exnihilocreatio:item_mesh:1>;

#my mod items
val compressed_workbench = <tbtmats:compressed_workbench>;
val small_thread = <tbtmats:small_thread?>;

#remove recipes

#handheld table
recipes.remove(handheld_table);

#mesh
recipes.remove(normal_mesh);



#add recipes

#stick + compressed_workbench -> handheld_table
recipes.addShaped(handheld_table,[
    [null, compressed_workbench],
    [stick, null]
]);

#string + small_thread -> normal_mesh
recipes.addShaped(normal_mesh, [
    [small_thread, mcstring, small_thread],
    [mcstirng, small_thread, mcstirng],
    [small_thread, mcstring, small_thread]
]);