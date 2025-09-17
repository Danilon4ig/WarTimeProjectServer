// Materials
val S = <item:create:sturdy_sheet>;
val M = <item:create:precision_mechanism>;
val B = <item:create:brass_sheet>;
val W = <item:vs_clockwork:wanderlite_matrix>;
val G = <item:create:golden_sheet>;
val I = <item:create:iron_sheet>;
val A = <item:minecraft:air>;

recipes.remove(<item:createpropulsion:physics_assembler>);
recipes.remove(<item:createpropulsion:assembly_gauge>);

// Physics Assembler
craftingTable.addShaped("physics_assembler", <item:createpropulsion:physics_assembler>, [
    [B, B, B],
    [M, W, M],
    [S, S, S]
]);

// Assembly Gauge
craftingTable.addShaped("assembly_gauge", <item:createpropulsion:assembly_gauge>, [
    [A, W, A],
    [A, G, A],
    [A, I, A]
]);