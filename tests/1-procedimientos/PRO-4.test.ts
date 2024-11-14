import { expect, test } from "bun:test"
import runSql from "../../src/runSql"

test('1. Vender 25000 de fruta - Puntos a 500', async () => {
  const responses = await runSql([
    `BEGIN
      actualizar_valor_puntos(500);
    END;`,
    `UPDATE MIEMBRO SET TOTALPUNTOS=500 WHERE ID_MIEMBRO = 1`,
    `SELECT * FROM MIEMBRO
    WHERE ID_MIEMBRO = 1`,
    `BEGIN
    canjear_puntos(1,'Fruta', 10);
  END;`,
    `SELECT * FROM MIEMBRO
    WHERE ID_MIEMBRO = 1`
  ])

  expect((responses.at(-1)?.rows?.at(-1) as any)?.at(-1)).toBe(450)
})

test('2. Vender 50000 de fruta - Puntos a 500', async () => {
  const responses = await runSql([
    `BEGIN
      actualizar_valor_puntos(500);
    END;`,
    `UPDATE MIEMBRO SET TOTALPUNTOS=500 WHERE ID_MIEMBRO = 1`,
    `SELECT * FROM MIEMBRO
    WHERE ID_MIEMBRO = 1`,
    `BEGIN
    canjear_puntos(1,'Fruta', 20);
  END;`,
    `SELECT * FROM MIEMBRO
    WHERE ID_MIEMBRO = 1`
  ])

  expect((responses.at(-1)?.rows?.at(-1) as any)?.at(-1)).toBe(400)
})

test('3. Vender 50000 de fruta - Puntos a 1000', async () => {
  const responses = await runSql([
    `BEGIN
      actualizar_valor_puntos(1000);
    END;`,
    `UPDATE MIEMBRO SET TOTALPUNTOS=500 WHERE ID_MIEMBRO = 1`,
    `SELECT * FROM MIEMBRO
    WHERE ID_MIEMBRO = 1`,
    `BEGIN
    canjear_puntos(1,'Fruta', 20);
  END;`,
    `SELECT * FROM MIEMBRO
    WHERE ID_MIEMBRO = 1`
  ])

  expect((responses.at(-1)?.rows?.at(-1) as any)?.at(-1)).toBe(450)
})