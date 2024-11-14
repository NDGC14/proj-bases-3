import runSql from "./src/runSql";

// TODO actualizar inventario
const stringQueries = [
  `DELETE IMPUESTOXCOMPRA WHERE ID_COMPRA = 50`,
  `DELETE COMPRAXPRODUCTO WHERE ID_COMPRA = 50`,
  `DELETE COMPRA WHERE ID_COMPRA = 50`,

  `INSERT INTO COMPRA(id_compra, id_miembro, id_colaborador, fecha) VALUES(50, 1, 1, TO_DATE('12-11-2023', 'DD-MM-YYYY'))`,
  `INSERT INTO COMPRAXPRODUCTO(ID_Compra, Nombre_producto, cantidad) VALUES(50, 'Pizza', 1)`,
  `INSERT INTO IMPUESTOXCOMPRA(ID_Compra, Tipo_Impuesto, Porcentaje) VALUES(50, 'IVA', 19)`,
]

for (let i in stringQueries) {
  const query = await runSql([stringQueries[i]]);
  console.log('Ejecutando ' + stringQueries[i] + "\n")
  console.log(
    query,
    // JSON.stringify(query?.metaData, null, 2)
  )
}
