create or replace procedure actualizar_valor_total (
   p_id_compra compra.id_compra%type
) as
   v_sub_total numeric := 0;
begin
   v_sub_total := calcular_sub_total(p_id_compra);
   update compra
      set
      total_compra = coalesce(
         v_sub_total + calcular_impuestos(
            p_id_compra,
            v_sub_total
         ),
         0
      )
    where id_compra = p_id_compra;
end;