create or replace procedure calcular_comisiones_diarias as
   comision    number;
   ventas      number;
   yacalculado number := 0;
begin
   for colab in (
      select colaborador.id_colaborador,
             sum(coalesce(
                total_compra,
                0
             )) as total_ventas,
             porcentaje_comision
        from colaborador
        full outer join (
         select *
           from compra
          where trunc(fecha) = trunc(sysdate)
      ) compra
      on colaborador.id_colaborador = compra.id_colaborador
       group by colaborador.id_colaborador,
                porcentaje_comision
   ) loop
      select count(*)
        into yacalculado
        from comisiondiariacolaborador
       where id_colaborador = colab.id_colaborador
         and fecha = trunc(sysdate)
         and rownum = 1;

      if ( yacalculado > 0 ) then
         update comisiondiariacolaborador
            set
            comisionventas = colab.total_ventas * ( colab.porcentaje_comision / 100 )
          where comisiondiariacolaborador.id_colaborador = colab.id_colaborador;
      else
         insert into comisiondiariacolaborador (
            id_colaborador,
            fecha,
            comisionventas
         ) values ( colab.id_colaborador,
                    trunc(sysdate),
                    colab.total_ventas * ( colab.porcentaje_comision / 100 ) );
      end if;
   end loop;

   commit;
end;