const illegalRecipes = [
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
];

const createRecipes = [
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
];

const vehiclesRemove = [
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
];

ServerEvents.recipes(event => {
    illegalRecipes.forEach(remRecipes => {
        event.remove({ output: remRecipes });
    });
    createRecipes.forEach(cRecipes => {
        event.remove({ output: cRecipes });
    });
    vehiclesRemove.forEach(vehicle => {
        event.remove({ id: vehicle });
    });
});
