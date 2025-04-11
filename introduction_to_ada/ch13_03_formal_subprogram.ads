generic
    Desc: String;
    type T is private;
    with function Comparison(X, Y: T) return boolean;
procedure Ch13_03_Formal_Subprogram(X, Y: T);
