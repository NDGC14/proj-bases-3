import merge from "./merge"
import configOracleDb from "./configOracleDb"
import OracleDB from "oracledb"

export default (queries: string[]): Promise<OracleDB.Result<unknown>[]> => {
  return new Promise(async (resolve, reject) => {
    const connection = await configOracleDb()
    if (!connection || connection == undefined) return reject('No se pudo establecer conexión')

    const responses: OracleDB.Result<unknown>[] = []

    for (let i in queries) {
      // process.stdout.write(`Ejecutando query ${+i + 1}/${queries.length}\r`);
      const q = queries[i]
      try {
        const response = await connection.execute(q)

        responses.push(response)
      } catch (err) {
        console.error(err)
      }

      await connection.commit()
    }

    connection.close();
    resolve(responses)
  })
}