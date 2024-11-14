import { expect, test } from "bun:test"
import runSql from "../../src/runSql"

test('1. Venta de una pizza', async () => {
  const responses = await runSql([
    `DELETE IMPUESTOXCOMPRA WHERE ID_COMPRA = 50`,
    `DELETE COMPRAXPRODUCTO WHERE ID_COMPRA = 50`,
    `DELETE COMPRA WHERE ID_COMPRA = 50`,
    `UPDATE INVENTARIOCAFETERIA
SET existencias = 100
WHERE nombre_producto = 'Pizza' AND nombre_cafeteria = 'Cafetería A'`,
    `INSERT INTO COMPRA(id_compra, id_miembro, id_colaborador, fecha) VALUES(50, 1, 1, SYSDATE)`,
    `INSERT INTO IMPUESTOXCOMPRA(ID_Compra, Tipo_Impuesto, Porcentaje) VALUES(50, 'IVA', 19)`,
    `INSERT INTO COMPRAXPRODUCTO(ID_Compra, Nombre_producto, cantidad) VALUES(50, 'Pizza', 1)`,
    `BEGIN
    calcular_comisiones_diarias(); 
  END;`,
    `select * from comisiondiariacolaborador`
  ])

  expect((responses.at(-1)?.r?.rows?.find((x: any) => x?.at(0) == 1) as any)?.at(-1)).toBe(2380)
})