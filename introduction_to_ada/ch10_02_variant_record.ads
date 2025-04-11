package Ch10_02_variant_record is
    type Expr;
    type Expr_Acc is access Expr;
    type Expr_Kind_Type is (Op_Plus, Op_Minus, Num);

    type Expr(Kind: Expr_Kind_Type) is record
        case Kind is
            when Op_Minus | Op_Plus =>
                Left, Right : Expr_Acc;
            when Num =>
                Val: Integer;
        end case;
    end record;
end Ch10_02_variant_record;