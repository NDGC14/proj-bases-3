import { readFileSync, writeFileSync } from 'fs'
const pkg = require('colors')
const { red, green, cyan } = pkg

const merge = () => {

  const order = [
    "DFisico/Drop.sql",
    "DFisico/DDL.sql",
    "DFisico/relationsInsertFile.sql",
    "primeras-funcionalidades/1-procedimientos/PRO-1.sql",
    "primeras-funcionalidades/1-procedimientos/PRO-2.sql",
    "primeras-funcionalidades/1-procedimientos/PRO-3.sql",
    "primeras-funcionalidades/1-procedimientos/PRO-4.sql",
    "primeras-funcionalidades/2-funciones/FUN-1.sql",
    "primeras-funcionalidades/2-funciones/FUN-2.sql",
    "primeras-funcionalidades/2-funciones/FUN-3.sql",
    "primeras-funcionalidades/2-funciones/FUN-4.sql",
    "primeras-funcionalidades/3-disparadores/DISP-1.sql",
    "primeras-funcionalidades/3-disparadores/DISP-2.sql",
    "primeras-funcionalidades/3-disparadores/DISP-3.sql",
  ]

  let fileContent = ""

  const cantFiles = order.length
  let readedFiles = 0

  for (let i in order) {
    const path = order[i]
    try {
      const readed = readFileSync(path, 'utf-8').trim().split("\n").join("\n  ")

      if (readed) {
        console.log('+ ' + green('Archivo ' + path + ' leido'))
        fileContent += "-- Inicio " + path + "\n"
        fileContent += "  " + readed + "\n"
        fileContent += "-- Fin " + path + "\n" + "\n"

        readedFiles++;
      } else throw Error()
    } catch (err) {
      console.log("- " + red('No se pudo leer el archivo ' + path))
    }
  }

  console.log("\n" + cyan('Archivo') + ' query.sql ' + cyan('generado, se leyeron ' + readedFiles + '/' + cantFiles))

  writeFileSync('query.sql', fileContent, 'utf-8')
}

export default merge