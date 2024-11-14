create or replace trigger calcular_comision_en_venta after
   insert on compra
   for each row
declare
   porcentaje_comision number;
   comision            number;
   ventas_diarias      number := 0;  -- Iniciar como 0 en caso de que no haya ventas previas
begin
    -- Obtener el porcentaje de comisión del colaborador
   select porcentaje_comision
     into porcentaje_comision
     from colaborador
    where id_colaborador = :new.id_colaborador;

    -- Sumar el valor de la venta a las ventas diarias del colaborador
   select sum(total_compra)
     into ventas_diarias
     from compra
    where id_colaborador = :new.id_colaborador
      and fecha = :new.fecha;  -- Usando directamente la fecha de la compra insertada

    -- Si no hay ventas diarias (resultado NULL), asignar 0
   if ventas_diarias is null then
      ventas_diarias := 0;
   end if;

    -- Calcular la comisión de la venta basada en las ventas diarias
   comision := ( ventas_diarias * porcentaje_comision ) / 100;

    -- Actualizar el total de comisiones del colaborador
   update colaborador
      set
      total_comision = comision
    where id_colaborador = :new.id_colaborador;

end;