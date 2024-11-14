CREATE OR REPLACE PROCEDURE Registrar_Compra(
    id_miembro IN Miembro.ID_Miembro%TYPE,
    id_colaborador IN Colaborador.ID_Colaborador%TYPE,
    nombre_producto IN Producto.Nombre_Producto%TYPE,
    cantidad IN CompraxProducto.Cantidad%TYPE
) AS
BEGIN
    -- Crear registro de la compra
    INSERT INTO Compra (ID_Miembro, ID_Colaborador, Fecha, Total_Compra)
    VALUES (id_miembro, id_colaborador, SYSDATE, 0)
    RETURNING ID_Compra INTO id_compra;

    -- Obtener el precio del producto
    SELECT Precio INTO precio_producto
    FROM Producto
    WHERE Nombre_Producto = nombre_producto;

    -- Calcular el total de la compra
    total_compra := precio_producto * cantidad;

    -- Insertar en CompraxProducto
    INSERT INTO CompraxProducto (ID_Compra, Nombre_Producto, Cantidad)
    VALUES (id_compra, nombre_producto, cantidad);

    -- Actualizar inventario de la cafetería
    UPDATE InventarioCafeteria
    SET Existencias = Existencias - cantidad
    WHERE Nombre_Cafeteria = (SELECT Nombre_Cafeteria FROM Colaborador WHERE ID_Colaborador = id_colaborador)
      AND Nombre_Producto = nombre_producto;

    -- Actualizar el total de la compra en la tabla Compra
    UPDATE Compra
    SET Total_Compra = total_compra
    WHERE ID_Compra = id_compra;
END;