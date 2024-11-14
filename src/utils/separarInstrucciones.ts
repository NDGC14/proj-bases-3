const fs = require('fs');

// Función para leer y separar las instrucciones de un archivo .sql
export default (sql: string) => {
  // Leer el archivo .sql

  // Expresión regular para identificar bloques de código que no deben ser divididos
  const regex = /(create\s+or\s+replace\s+(trigger|function|procedure|view|index)[^;]*?end\s*;|[^;]+;)/gi;
  const regex2 = /(create\s+or\s+replace\s+(trigger|function|procedure|view|index))(.|[\s\S\r\n])*?(end;)/gi;
  // Obtener todas las instrucciones
  const instrucciones = [];
  const createsorreplaces = []
  let match;

  do {
    match = regex2.exec(sql.trim())
    if (match == null) {
      break;
    }
    createsorreplaces.push(match[0].trim());
    regex2.lastIndex = 0;
    sql = sql.slice(0, match.index) + sql.slice(match.index + match[0].length).trim()
  } while (match !== null);

  // console.log(instrucciones)

  // Usar la expresión regular para extraer las instrucciones
  while ((match = regex.exec(sql)) !== null) {
    // Agregar cada instrucción a la lista
    instrucciones.push(match[0].trim());
  }

  return [...instrucciones, ...createsorreplaces.map(x => x + ';')].filter( x=> x != "end;")
}