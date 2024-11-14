create or replace function obtener_saldo_puntos (
   id_miembro number
) return number is
   puntos_acumulados number := 0;
   puntos_canjeados  number := 0;
begin
    -- Obtener puntos acumulados
   select coalesce(
      sum(total_puntos),
      0
   )
     into puntos_acumulados
     from txpuntos
    where id_miembro = id_miembro
      and tipo = 'ACUMULAR';

    -- Obtener puntos canjeados
   select coalesce(
      sum(total_puntos),
      0
   )
     into puntos_canjeados
     from txpuntos
    where id_miembro = id_miembro
      and tipo = 'CANJE';

    -- Retornar saldo de puntos
   return puntos_acumulados - puntos_canjeados;
end;