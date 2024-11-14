--Actualizar inventario segun productos comprados

create or replace function verificar_existencias (
   p_nombre_producto in varchar2,
   p_id_compra       in number,
   p_cantidad        in number
) return boolean is
   v_existencias      number;
   v_nombre_cafeteria varchar2(100);
begin
    -- Obtener la cafetería asociada a la compra
   select nombre_cafeteria
     into v_nombre_cafeteria
     from colaborador
    where id_colaborador = (
      select id_colaborador
        from compra
       where id_compra = p_id_compra
   );

    -- Obtener las existencias actuales del producto en la cafetería
   select existencias
     into v_existencias
     from inventariocafeteria
    where nombre_cafeteria = v_nombre_cafeteria
      and nombre_producto = p_nombre_producto;

    -- Verificar si hay suficientes existencias
   if v_existencias >= p_cantidad then
      return true;
   else
      return false;
   end if;
end;