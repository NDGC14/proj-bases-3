create or replace trigger aplicar_descuento before
   insert or update on compraxproducto
   for each row
declare
   v_descuento              number;
   v_precio                 number;
   v_subtotal_con_descuento number;
begin
   select descuento,
          precio   --Tomamos de prodcuto para calcular subtotal
     into
      v_descuento,
      v_precio
     from producto
    where nombre_producto = :new.nombre_producto;

   if v_descuento > 0 then
      v_subtotal_con_descuento := :new.cantidad * v_precio * ( 1 - ( v_descuento / 100 ) ); --Creo que se sobreentiende que hace :|
   else
      v_subtotal_con_descuento := :new.cantidad * v_precio;
   end if;


   :new.subtotal_detalle := v_subtotal_con_descuento; --Establecemos el valor del subtotal


   update compra --Actualizamos TODAS las compras que tengan el producto que se determino que tiene descuento
      set
      total_compra = (
         select sum(cp.subtotal_detalle) --Obtenemos todos los detalles asociados a la compra y los sumamos
           from compraxproducto cp
          where cp.id_compra = compra.id_compra
      )
    where id_compra in ( --Obtenemos los detalles de compra que tengan el producto asociado 
      select id_compra
        from compraxproducto
       where nombre_producto = :new.nombre_producto
   );

end;