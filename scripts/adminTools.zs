//The script removing specific items craft, making that impossible to legally get in survival

//Recipes for remove list
val recipeIds = [
    "kill_tool:id_1",
    "kill_tool:id_3",
    "kill_tool:id_4",
    "kill_tool:id_5",
    "kill_tool:id_8"
] as string[];

// Remove recipe
for recipeId in recipeIds {
    val item = <item:${recipeId}>;
    item.addTooltip("§4Только для администрации!");
    recipes.remove(item);
}
