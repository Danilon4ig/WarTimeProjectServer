// kubejs/startup_scripts/items.js
StartupEvents.registry("item", event => {
  event.create("wand_axe")      // Внутренний ID предмета
       .displayName("Деревянный топор")   // Отображаемое имя
       .maxStackSize(1)             // Максимальный стак
       .rarity("common")               // Редкость
       .texture("kubejs:item/wooden_axe.png"); // Путь к текстуре в ресурспаке
});
