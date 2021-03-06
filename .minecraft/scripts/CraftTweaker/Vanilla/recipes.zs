#priority 5
#modloaded atutils

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.recipes.ICraftingRecipe;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

<contenttweaker:four_leaf_clover_necklace>.addShiftTooltip(game.localize("autotech.tier.flcn.tooltip"));

/** Recipes for Crafting Table */
RecipeUtils.recipeTweak(true, <minecraft:furnace>,[
    [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
    [<ore:cobblestone>, null, <ore:cobblestone>],
    [<ore:cobblestone>, <ore:ingotIron>, <ore:cobblestone>]
]);

RecipeUtils.recipeTweak(true, <minecraft:crafting_table>,[
    [<ore:plankWood>, <ore:rock>, <ore:plankWood>],
    [<ore:ingotIron>, <contenttweaker:straw_rope>, <ore:ingotIron>],
    [<ore:plankWood>, <ore:rock>, <ore:plankWood>]
]);

artisanUtils.RecipeTweakWithTools("basic", true, <minecraft:glass_bottle>, [
    [null, <ore:shardGlass>, null],
    [<ore:shardGlass>, null, <ore:shardGlass>]
], {<ore:artisansBurner> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("basic", true, <minecraft:glass_bottle> * 4, [
    [null, <ore:blockGlass>, null],
    [<ore:blockGlass>, null, <ore:blockGlass>]
], {<ore:artisansBurner> : 4} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools_("basic", false, <minecraft:string> * 4, [
    [<ore:blockWool>]
], {<ore:artisansMortar> : 4} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools_("basic", false, <minecraft:dye:14>, [
    [<ore:cropCarrot>]
], {<ore:artisansMortar> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools_("basic", false, <minecraft:dye:6>, [
    [<mysticalworld:carapace>]
], {<ore:artisansMortar> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools_("basic", false, <minecraft:sugar> * 2, [
    [<minecraft:reeds>]
], {<ore:artisansMortar> : 2} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools_("basic", false, <minecraft:dye:15> * 4, [
    [<ore:bone>]
], {<ore:artisansMortar> : 4} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools_("basic", false, <minecraft:blaze_powder> * 5, [
    [<ore:rodBlaze>]
], {<ore:artisansMortar> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools_("basic", false, <minecraft:flint>, [
    [<ore:gravel>]
], {<ore:artisansMortar> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools_("basic", false, <minecraft:magma_cream>, [
    [<minecraft:magma>]
], {<ore:artisansMortar> : 4} as int[IIngredient]);

for recipe in recipes.all {
    var rec1D as IIngredient[] = recipe.ingredients1D;
    for ingredient in rec1D {
        for logWood in <ore:logWood>.items {
            if(logWood has ingredient && rec1D.length == 1) {
                recipes.removeByRecipeName(recipe.fullResourceDomain);
                recipes.addShapeless(<survivalist:chopping_block>, rec1D);
            }
        }
    }
}