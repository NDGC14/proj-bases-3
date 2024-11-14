import { expect, test } from "bun:test"
import runSql from "../../src/runSql"

test('1. Venta de una pizza', async () => {
  const responses = await runSql([
    `DELETE IMPUESTOXCOMPRA WHERE ID_COMPRA = 52`,
    `DELETE COMPRAXPRODUCTO WHERE ID_COMPRA = 52`,
    `DELETE COMPRA WHERE ID_COMPRA = 52`,
    `UPDATE INVENTARIOCAFETERIA
SET existencias = 100
WHERE nombre_producto = 'Pizza' AND nombre_cafeteria = 'Cafetería A'`,
    `INSERT INTO COMPRA(id_compra, id_miembro, id_colaborador, fecha) VALUES(52, 1, 1, SYSDATE)`,
    `INSERT INTO IMPUESTOXCOMPRA(ID_Compra, Tipo_Impuesto, Porcentaje) VALUES(52, 'IVA', 19)`,
    `INSERT INTO COMPRAXPRODUCTO(ID_Compra, Nombre_producto, cantidad) VALUES(52, 'Pizza', 1)`,
    `INSERT INTO PAGO(id_compra, monto_total, metodo_pago) values(52, 23800, 'EFECTIVO')`,
    `select * from comisiondiariacolaborador`
  ])

  expect((responses.at(-1)?.r?.rows?.find((x: any) => x?.at(0) == 1) as any)?.at(-1)).toBe(4760)
})