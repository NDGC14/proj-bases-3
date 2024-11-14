-- Al completar una compra, es decir, cuando se realiza un pago, se debe actualizar la comisión

create or replace trigger calcular_comision_en_venta after
   insert on pago
   for each row
declare
   v_comision       number := 0;  -- Iniciar como 0 en caso de que no haya ventas previas
   v_ventas         number := 0;  -- Iniciar como 0 en caso de que no haya ventas previas
   yacalculado      number := 0;
   v_id_colaborador colaborador.id_colaborador%type;
begin
   select compra.id_colaborador
     into v_id_colaborador
     from compra
    where compra.id_compra = :new.id_compra
      and rownum = 1;

   select count(*)
     into yacalculado
     from comisiondiariacolaborador
    where id_colaborador = v_id_colaborador
      and fecha = trunc(sysdate)
      and rownum = 1;

   select sum(coalesce(
      total_compra,
      0
   )) as valor
     into v_ventas
     from colaborador,
          compra
    where colaborador.id_colaborador = v_id_colaborador
      and trunc(fecha) = trunc(SYSDATE);

   select porcentaje_comision
     into v_comision
     from colaborador
    where id_colaborador = v_id_colaborador
      and rownum = 1;

   if ( yacalculado > 0 ) then
      update comisiondiariacolaborador
         set
         comisionventas = (v_comision / 100) * v_ventas
       where comisiondiariacolaborador.id_colaborador = v_id_colaborador;
   else
      insert into comisiondiariacolaborador (
         id_colaborador,
         fecha,
         comisionventas
      ) values ( v_id_colaborador,
                 trunc(sysdate),
                 (v_comision / 100) * v_ventas );
   end if;
end;