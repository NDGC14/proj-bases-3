-- Para almacenar las comisiones diarias de cada colaborador
create table comisiondiariacolaborador (
   id_colaborador number not null,
   fecha          date not null,
   comisionventas number not null,
   primary key ( id_colaborador,
                 fecha ),
   foreign key ( id_colaborador )
      references colaborador ( id_colaborador )
         on delete set null
)