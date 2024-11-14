import OracleDB from "oracledb";

export default (): Promise<OracleDB.Connection | undefined> => {
  return new Promise(async (resolve, reject) => {
    let connection: OracleDB.Connection | undefined = undefined;
    OracleDB.autoCommit = true;
    try {
      connection = await OracleDB.getConnection({
        user: import.meta.env.ORACLE_USER,
        password: import.meta.env.ORACLE_PWD,
        connectString: import.meta.env.ORACLE_URL,
      })
      if (!connection) throw Error("No se logro conectar a la db")
      return resolve(connection)
    } catch (err) {
      return reject(undefined)
    }
  })
}