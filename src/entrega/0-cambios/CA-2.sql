-- Funcion que calcula el sub total de la compra
create or replace function calcular_sub_total (
   p_id_compra compra.id_compra%type
) return numeric is
   v_sub_total numeric := 0;
begin
   select sum( cantidad * precio ) as valor
     into v_sub_total
     from producto,
          compraxproducto
    where compraxproducto.id_compra = p_id_compra
      and producto.nombre_producto = compraxproducto.nombre_producto;
   return v_sub_total;
end;
