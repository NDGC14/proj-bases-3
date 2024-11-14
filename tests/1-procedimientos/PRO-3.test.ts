import { expect, test } from "bun:test"
import runSql from "../../src/runSql"

test('1. Poner puntos en 50', async () => {
  const responses = await runSql([
    `BEGIN
      actualizar_valor_puntos(50);
    END;`,
    "SELECT * FROM PUNTOS"
  ])

  expect((responses.at(-1)?.r?.rows?.at(-1) as any)?.at(-1)).toBe(50)
})

test('2. Poner puntos en 500', async () => {
  const responses = await runSql([
    `BEGIN
      actualizar_valor_puntos(500);
    END;`,
    "SELECT * FROM PUNTOS"
  ])

  expect((responses.at(-1)?.r?.rows?.at(-1) as any)?.at(-1)).toBe(500)
})