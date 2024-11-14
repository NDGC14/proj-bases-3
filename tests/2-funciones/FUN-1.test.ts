import { expect, test } from "bun:test"
import runSql from "../../src/runSql"

test('1. Compra de 1000 - Puntos a 1000', async () => {
  const responses = await runSql([
    `BEGIN
      actualizar_valor_puntos(1000);
    END;`,
    `SELECT calcular_puntos_compra(1000) as puntos FROM DUAL`,
  ])

  expect((responses.at(-1)?.rows?.at(-1) as any)?.at(-1)).toBe(1)
})