# Proyecto Bases 3
[https://github.com/Achalogy/proj-bases-3](https://github.com/Achalogy/proj-bases-3)

Archivo `.sql` final: [query.sql](https://github.com/Achalogy/proj-bases-3/blob/main/query.sql)

- Miguel Francisco Vargas Contreras `is147208`
- Nicolas Diaz Granados Cano `is147201`
- Sara Rodriguez Urueña `is147206`

# Documentación

## Modelo de Dominio

## Cambios necesarios

1. Se hizo un cambio en el DDL para agregar el valor `totalpuntos` a la tabla de `Miembro`, asi podemos hacer triggers que permitan actualizar este valor.
2. Eliminar el total_impuesto, es un valor calculado, ayuda a la normalización
3. Elimine el not null del total_compra, ya que los impuestos y las comprasxproducto necesitan un id_compra, es imposible crear la compra primero y luego agregar el total_compra
