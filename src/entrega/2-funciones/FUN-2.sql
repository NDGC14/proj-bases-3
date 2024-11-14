/*
  Usando el parametro p_id_compra, vamos a ver que impuestos son aplicables a la compra,
  así podemos calcular el porcentaje del subtotal a pagar según cada impuesto y luego
  lo sumaremos para poder retornar el total de impuestos aplicables a pagar
*/

create or replace function calcular_impuestos (
   p_id_compra compra.id_compra%type,
   p_subtotal  numeric
) return numeric is
   v_imp_calculado numeric := 0;
begin
   for impuesto in (
      select porcentaje
        from impuestoxcompra
       where id_compra = p_id_compra
   ) loop
      v_imp_calculado := v_imp_calculado + ( p_subtotal * ( impuesto.porcentaje / 100 ) );
   end loop;

   return v_imp_calculado;
end;