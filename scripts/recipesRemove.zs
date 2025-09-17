// Recipes for remove list
val recipeIds = [
    "createcasing:chorium_ingot",
    "createcasing:creative_gearbox",
    "createcasing:vertical_creative_gearbox",
    "createcasing:creative_encased_chain_drive",
    "createcasing:creative_adjustable_chain_gearshift",
    "createcasing:creative_depot",
    "createcasing:creative_press",
    "createcasing:creative_mixer",
    "createcasing:creative_casing",
    "valkyrien_warium:build_core_placer",
    "valkyrien_warium:propeller_rotor",
    "valkyrien_warium:water_propeller_rotor",
    "valkyrien_warium:helicopter_rotor",
    "valkyrien_warium:helicopter_blade",
    "superbwarfare:jump_pad"
] as string[];

val createIds = [
    "crusty_chunks:fuel_hose",
    "valkyrien_warium:propeller",
    "valkyrien_warium:heli_rotor",
    "valkyrien_warium:boat_propeller",
    "valkyrien_warium:control_surface",
    "valkyrien_warium:vertical_control_surface",
    "valkyrien_warium:control_surface_offset_top",
    "valkyrien_warium:control_surface_offset_bottom",
    "valkyrien_warium:control_surface_dark_gray",
    "valkyrien_warium:vertical_control_surface_dark_gray",
    "valkyrien_warium:control_surface_offset_top_dark_gray",
    "valkyrien_warium:control_surface_offset_bottom_dark_gray"
] as string[];

 val superbTags = [
    'superbwarfare:bmp_2',
    'superbwarfare:mk_42',
    'superbwarfare:mle_1934',
    'superbwarfare:bl_132',
    'superbwarfare:hpj_11',
    'superbwarfare:annihilator',
    'superbwarfare:laser_tower',
    'superbwarfare:speedboat',
    'superbwarfare:lav_150',
    'superbwarfare:prism_tank',
    'superbwarfare:yx_100',
    'superbwarfare:ah_6',
    'superbwarfare:a_10a'
] as string[];

val superbContainerID = "superbwarfare:container";

// Remove recipes by ID
for recipeId in recipeIds {
    val item = <item:${recipeId}>;
    item.addTooltip("§4Предмет недоступен!");
}

// Remove other items with tooltip
for createId in createIds {
    val item = <item:${createId}>;
    item.addTooltip("§4Используйте Create/VS Clockwork");
}

for tag in superbTags {
    val item = <item:${superbContainerID}>.withTag({BlockEntityTag:{EntityType: tag,id:"superbwarfare:container"}});
    item.addTooltip("§4Предмет недоступен!");
}
