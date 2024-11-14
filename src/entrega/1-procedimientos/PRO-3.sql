/*
Actualizar el valor de los puntos.
*/

create or replace procedure actualizar_valor_puntos (
   p_valor_puntos numeric
) as
begin
   if p_valor_puntos < 0 then
      dbms_output.put_line('No se puede asignar un valor menor a 0');
   else
      delete from puntos;
      insert into puntos ( valor ) values ( p_valor_puntos );
   end if;
end;