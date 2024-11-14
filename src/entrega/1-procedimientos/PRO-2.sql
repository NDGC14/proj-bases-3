CREATE OR REPLACE PROCEDURE Calcular_Comisiones_Diarias AS
    -- Cursor para obtener el total de ventas por cada colaborador
    CURSOR cur_colaboradores IS
        SELECT ID_Colaborador, SUM(Total_Compra) AS Total_Ventas
        FROM Compra
        GROUP BY ID_Colaborador;

    total_ventas NUMBER;  -- Para almacenar el total de ventas del colaborador
    comision NUMBER;      -- Para almacenar el porcentaje de comisión del colaborador
BEGIN
    -- Bucle que itera sobre cada colaborador
    FOR Colaborador IN cur_colaboradores LOOP
        -- Asignar el total de ventas del colaborador actual
        total_ventas := colaborador.Total_Ventas;

        -- Obtener el porcentaje de comisión del colaborador
        SELECT Porcentaje_Comision INTO comision
        FROM Colaborador
        WHERE ID_Colaborador = colaborador.ID_Colaborador;

        -- Insertar la comisión diaria para el colaborador
        INSERT INTO Comisiones_Diarias (ID_Colaborador, Total_Comision)
        VALUES (colaborador.ID_Colaborador, (total_ventas * comision) / 100);
    END LOOP;

    COMMIT;
END;