#priority 5
#modloaded atutils

import crafttweaker.item.IIngredient;

import scripts.CraftTweaker.Utils.artisanUtils;

artisanUtils.RecipeTweakWithTools("engineer", true, <teslacorelib:machine_case>, [
	[<ore:stonePolished>, <minecraft:redstone>, <ore:stonePolished>],
    [<ore:ingotDawnstone>, <embers:mech_core>, <ore:ingotDawnstone>],
    [<ore:stonePolished>, <minecraft:redstone>, <ore:stonePolished>]
], {<ore:artisansDriver> : 5, <ore:artisansSpanner> : 8} as int[IIngredient]);