import { readFileSync } from "fs";
import merge from "./src/merge";
import separarInstrucciones from "./src/utils/separarInstrucciones";
import configOracleDb from "./src/configOracleDb";

merge()
const connection = await configOracleDb()
if (connection && connection != undefined) {
  const file = await readFileSync('./query.sql', {
    encoding: 'utf-8'
  })

  const instructions = separarInstrucciones(file.replace(/--[^\n]*/g, '').replace(/\/\*[\s\S]*?\*\//g, '')).map(x => {
    if (x.endsWith(';')) return x.slice(0, -1)
    return x
  }).filter(x => x != 'nd')


  for (let i in instructions) {
    let ins = instructions[i];
    // console.log(ins)

    process.stdout.write(`Ejecutando [${+i+1}/${instructions.length}]\r`);

    // console.log(ins)

    try {
      await connection.execute(ins);
    } catch (err) {
      console.log('- [' + ins + "]")
      console.error(err)
    }
  }

  connection.close()
  console.log('\ndone')
}else {
  console.log('no se pudo conectar')
}
