/*
  Toma el valor de los puntos desde la tabla PUNTOS, luego lo multiplca por el parametro p_precio, esto le hace un
  FLOOR(n) para enviar un numero entero.
*/

create or replace function calcular_puntos_compra (
   p_precio numeric
) return numeric is
   v_puntos     numeric := 0;
   v_cantpuntos numeric := 0;
begin
   select valor
     into v_cantpuntos
     from puntos
    where rownum = 1;

   v_puntos := floor(p_precio / v_cantpuntos);
   return v_puntos;
end;