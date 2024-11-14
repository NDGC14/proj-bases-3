create or replace trigger actualizar_inventario before
   insert on compraxproducto
   for each row
declare
   v_existencias number;
begin
   select existencias
     into v_existencias
     from inventariocafeteria --Toma las existencias iniciales
    where nombre_cafeteria = (
         select nombre_cafeteria --Selecciona el nombre de la cafeteria donde se va a reducir el inventario y a que producto se le reduce
           from colaborador
          where id_colaborador = (
            select id_colaborador --Accede a traves de ID_Colaborador en compra a la cafeteria correspondiente
              from compra
             where id_compra = :new.id_compra
         )
      ) --Se encarga de tomar la compra que se esta referenciando
      and nombre_producto = :new.nombre_producto; --Selecciona el producto en especifico

   if not verificar_existencias(
      :new.nombre_producto,
      :new.id_compra,
      :new.cantidad
   ) then
      raise_application_error(
         -20002,
         'Error: No hay suficientes existencias para completar la compra.'
      );
   end if;


   update inventariocafeteria --Actualiza los valores
      set
      existencias = existencias - :new.cantidad
    where nombre_cafeteria = (
         select nombre_cafeteria
           from colaborador
          where id_colaborador = (
            select id_colaborador
              from compra
             where id_compra = :new.id_compra
         )
      )
      and nombre_producto = :new.nombre_producto;
end;