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
  }).filter(x => x != 'nd').map(x => {
    x = x.trim()

    if(x.endsWith("ND") || x.endsWith('nd')) {
      x = x.slice(0 , -2)
    }
    return x
  })


  for (let i in instructions) {
    let ins = instructions[i];
    process.stdout.write(`Ejecutando comando ${+i + 1}/${instructions.length}\r`);

    try {
      await connection.execute(ins);
    } catch (err) {
      process.stdout.write(`\n\nError en la linea ${+i + 1}\n`);
      console.log("==============================================================================")
      console.log(ins)
      console.error(err)
      console.log("==============================================================================")
    }
  }

  connection.close()
  console.log('\ndone')
} else {
  console.log('no se pudo conectar')
}
