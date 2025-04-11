
with Ch10_02_variant_record; use Ch10_02_variant_record;

procedure Ch10_02_variant_record_main is
    E: Expr := (Num, 12);
begin
    -- E.Left := new Expr'(Num, 15);   -- component not present
    E.Val := 33;
end Ch10_02_variant_record_main;
