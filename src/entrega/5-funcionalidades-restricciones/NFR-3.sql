create or replace procedure actualizar_totales_compras as
begin
   for cc in (
      select id_compra
        from compra
   ) loop
      actualizar_valor_total(cc.id_compra);
   end loop;
end;