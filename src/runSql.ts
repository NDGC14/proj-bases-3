import merge from "./merge"
import configOracleDb from "./configOracleDb"
import OracleDB, { type Result } from "oracledb"

export default (queries: string[]): Promise<{
  r?: OracleDB.Result<unknown>,
  dbms: any
}[]> => {
  return new Promise(async (resolve, reject) => {
    const connection = await configOracleDb()
    if (!connection || connection == undefined) return reject('No se pudo establecer conexión')

    const responses: {
      r?: OracleDB.Result<unknown>,
      dbms: any
    }[] = []

    await connection.execute(`BEGIN
         DBMS_OUTPUT.ENABLE(NULL);
       END;`)

    for (let i in queries) {
      // process.stdout.write(`Ejecutando query ${+i + 1}/${queries.length}\r`);
      const q = queries[i]
      try {
        let response: {
          r?: OracleDB.Result<any>,
          dbms: String[]
        } = { dbms: [] };
        response.r = await connection.execute(q)

        let dbmsoutput;


        do {
          dbmsoutput = await connection.execute(`BEGIN
          DBMS_OUTPUT.GET_LINE(:ln, :st);
          END;`,
            {
              ln: { dir: OracleDB.BIND_OUT, type: OracleDB.STRING, maxSize: 32767 },
              st: { dir: OracleDB.BIND_OUT, type: OracleDB.NUMBER }
            })
          let ln = (dbmsoutput.outBinds as any).ln;
          if (ln) response.dbms.push(ln)
        } while ((dbmsoutput.outBinds as any).st === 0);

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