-- Se actualiza el valor total de la compra, tenemos en cuenta que se puede aplicar el impuesto a cada producto individualmente
create or replace trigger actualizar_valor_total_trigger after
   insert or update or delete on compraxproducto
   for each row
declare
   v_precio numeric := 0;
begin
   if inserting
   or updating then
      select precio
        into v_precio
        from producto
       where nombre_producto = :new.nombre_producto;
   else
      select precio
        into v_precio
        from producto
       where nombre_producto = :old.nombre_producto;
   end if;

   if inserting then
      update compra
         set
         total_compra = coalesce(
            total_compra,
            0
         ) + ( v_precio * :new.cantidad ) + calcular_impuestos(
            :new.id_compra,
            v_precio * :new.cantidad
         )
       where id_compra = :new.id_compra;
   elsif updating then
      update compra
         set
         total_compra = ( coalesce(
            total_compra,
            0
         ) - ( v_precio * :old.cantidad ) - calcular_impuestos(
            :old.id_compra,
            v_precio * :old.cantidad
         ) ) + ( v_precio * :new.cantidad ) + calcular_impuestos(
            :new.id_compra,
            v_precio * :new.cantidad
         )
       where id_compra = :new.id_compra;
   elsif deleting then
      update compra
         set
         total_compra = coalesce(
            total_compra,
            0
         ) - ( v_precio * :old.cantidad ) - calcular_impuestos(
            :old.id_compra,
            v_precio * :old.cantidad
         )
       where id_compra = :old.id_compra;
   end if;


end;