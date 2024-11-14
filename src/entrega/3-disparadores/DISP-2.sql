/*

*/

create or replace trigger actualizar_saldo_puntos after
   insert or update or delete on txpuntos
   for each row
declare
   v_diff numeric := 0;
begin
   if deleting then
      v_diff := -old.total_puntos;
   elsif inserting then
      v_diff := new.total_puntos;
   elsif updating then
      v_diff := new.total_puntos - old.total_puntos;
   end if;

   update miembro
      set
      totalpuntos = totalpuntos + v_diff
    where id_miembro = new.id_miembro;
end;