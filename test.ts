import runSql from "./src/runSql";

const stringQueries = [
  `begin
    actualizar_totales_compras();
  end;`
]

for (let i in stringQueries) {
  console.log('Ejecutando ' + stringQueries[i] + "\n")
  const query = await runSql([stringQueries[i]]);
  console.log(
    query,
    // JSON.stringify(query?.metaData, null, 2),
  )
}
