create or replace procedure canjear_puntos (
   p_id_miembro        in number,
   p_nombre_producto   in varchar2,
   p_cantidad_producto in number
) as
   v_puntostotales     number;
   v_precio_producto   number;
   v_valor_punto       number;
   v_puntos_requeridos number;
begin
    -- Obtener los puntos totales del miembro
   select totalpuntos
     into v_puntostotales
     from miembro
    where id_miembro = p_id_miembro;

    -- Obtener el precio del producto
   select precio
     into v_precio_producto
     from producto
    where nombre_producto = p_nombre_producto;

    -- Obtener el valor de un punto en unidades monetarias (de la tabla Puntos)
   select valor
     into v_valor_punto
     from puntos; 

    -- Calcular los puntos requeridos para el canje
   v_puntos_requeridos := FLOOR(( v_precio_producto * p_cantidad_producto ) / v_valor_punto);

    -- Verificar si el miembro tiene suficientes puntos para el canje
   if v_puntostotales >= v_puntos_requeridos then
        -- Actualizar los puntos del miembro restando los puntos usados
      update miembro
         set
         totalpuntos = totalpuntos - v_puntos_requeridos
       where id_miembro = p_id_miembro;

   else
      raise_application_error(
         -20003,
         'Error: Puntos insuficientes para realizar el canje.'
      );
   end if;
end;