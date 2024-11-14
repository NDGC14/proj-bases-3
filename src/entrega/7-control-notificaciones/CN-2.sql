create or replace trigger notificacion_puntos_insuficientes before
   insert on txpuntos
   for each row
declare
   puntos_acumulados number;
   puntos_necesarios number := :new.total_puntos;
begin
    -- Calcular puntos acumulados del miembro
   select coalesce(
      sum(total_puntos),
      0
   )
     into puntos_acumulados
     from txpuntos
    where id_miembro = :new.id_miembro
      and tipo = 'ACUMULAR';

    -- Verificar si los puntos acumulados son suficientes para la redención
   if puntos_acumulados < puntos_necesarios then
        -- Insertar notificación de puntos insuficientes
      insert into notificaciones_puntos (
         id_notificacion,
         id_miembro,
         mensaje
      ) values ( notificaciones_puntos_seq.nextval,
                 :new.id_miembro,
                 'Puntos insuficientes para redimir el producto. Intento el ' || to_char(
                    sysdate,
                    'YYYY-MM-DD HH24:MI:SS'
                 ) );
   end if;
end;