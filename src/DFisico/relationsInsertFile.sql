DELETE FROM CompraxProducto;
DELETE FROM TxPuntos;
DELETE FROM ImpuestoXCompra;
DELETE FROM Pago;
DELETE FROM Compra;
DELETE FROM InventarioCafeteria;
DELETE FROM Producto;
DELETE FROM Colaborador;
DELETE FROM Cafeteria;
DELETE FROM Piso;
DELETE FROM Edificio;
DELETE FROM Miembro;
DELETE FROM Puntos;

--- Puntos
INSERT INTO Puntos (valor) VALUES (1000);

--- Miembro
INSERT INTO Miembro (Tipo_Miembro, Genero, Nombre, totalpuntos) VALUES ('PROFESOR', 'M', 'Juan Pérez', 0); -- 1
INSERT INTO Miembro (Tipo_Miembro, Genero, Nombre, totalpuntos) VALUES ('ESTUDIANTE', 'M', 'Miguel Vargas', 0); -- 2
INSERT INTO Miembro (Tipo_Miembro, Genero, Nombre, totalpuntos) VALUES ('ESTUDIANTE', 'F', 'Sara Urñea', 0); -- 3
INSERT INTO Miembro (Tipo_Miembro, Genero, Nombre, totalpuntos) VALUES ('ESTUDIANTE', 'M', 'Nicolas Granados', 0); -- 4
INSERT INTO Miembro (Tipo_Miembro, Genero, Nombre, totalpuntos) VALUES ('EMPLEADO', 'M', 'Carlos García', 0); -- 5

--- CorreoxMiembro
INSERT INTO MiembroxCorreo (Correo, ID_Miembro) VALUES ('juan.perez@javeriana.edu.co', 1);
INSERT INTO MiembroxCorreo (Correo, ID_Miembro) VALUES ('vargas_mf@javeriana.edu.co', 2);
INSERT INTO MiembroxCorreo (Correo, ID_Miembro) VALUES ('sara_u@javeriana.edu.co', 3);
INSERT INTO MiembroxCorreo (Correo, ID_Miembro) VALUES ('nicolas_granados@javeriana.edu.co', 4);
INSERT INTO MiembroxCorreo (Correo, ID_Miembro) VALUES ('carlos.garcia@javeriana.edu.co', 5);


--- Edificio
INSERT INTO edificio (Nombre) VALUES ('Ed. Fernando Baron');
INSERT INTO edificio (Nombre) VALUES ('Ed. Gabriel Giraldo');
INSERT INTO edificio (Nombre) VALUES ('Ed. Arango Puerta');
INSERT INTO edificio (Nombre) VALUES ('Ed. Atico');
INSERT INTO edificio (Nombre) VALUES ('Ed. Julio Carrizosa');
INSERT INTO edificio (Nombre) VALUES ('Ed. Jose Gabriel Maldonado');
INSERT INTO edificio (Nombre) VALUES ('Ed. Jorge Hoyoso Vasques');
INSERT INTO edificio (Nombre) VALUES ('Ed. Emilio Arango');
INSERT INTO edificio (Nombre) VALUES ('Facultad de Artes');
INSERT INTO edificio (Nombre) VALUES ('Hospital Universitario San Ignacio');
INSERT INTO edificio (Nombre) VALUES ('Ed. Pablo VI');
INSERT INTO edificio (Nombre) VALUES ('Ed. Felix Restrepo');
INSERT INTO edificio (Nombre) VALUES ('Ed. Jose Rafael Arboleda');

--- Piso

INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Fernando Baron'); -- 1
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Fernando Baron'); -- 2
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Fernando Baron'); -- 3
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Gabriel Giraldo'); -- 4
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Gabriel Giraldo'); -- 5
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Arango Puerta'); -- 6
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Arango Puerta'); -- 7
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Arango Puerta'); -- 8
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Atico'); -- 9
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Atico'); -- 10
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Julio Carrizosa'); -- 11
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Julio Carrizosa'); -- 12
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Jose Gabriel Maldonado'); -- 13
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Jose Gabriel Maldonado'); -- 14
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Jose Gabriel Maldonado'); -- 15
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Jorge Hoyoso Vasques'); -- 16
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Jorge Hoyoso Vasques'); -- 17
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Jorge Hoyoso Vasques'); -- 18
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Jorge Hoyoso Vasques'); -- 19
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Emilio Arango'); -- 20
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Emilio Arango'); -- 21
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Emilio Arango'); -- 22
INSERT INTO Piso (Nombre_Edificio) VALUES ('Facultad de Artes'); -- 23
INSERT INTO Piso (Nombre_Edificio) VALUES ('Facultad de Artes'); -- 24
INSERT INTO Piso (Nombre_Edificio) VALUES ('Hospital Universitario San Ignacio'); -- 25
INSERT INTO Piso (Nombre_Edificio) VALUES ('Hospital Universitario San Ignacio'); -- 26
INSERT INTO Piso (Nombre_Edificio) VALUES ('Hospital Universitario San Ignacio'); -- 27
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Pablo VI'); -- 28
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Pablo VI'); -- 29
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Pablo VI'); -- 30
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Felix Restrepo'); -- 31
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Felix Restrepo'); -- 32
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Felix Restrepo'); -- 33
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Jose Rafael Arboleda'); -- 34
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Jose Rafael Arboleda'); -- 35
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Jose Rafael Arboleda'); -- 36
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Jose Rafael Arboleda'); -- 37
INSERT INTO Piso (Nombre_Edificio) VALUES ('Ed. Jose Rafael Arboleda'); -- 38

--- Cafeteria

INSERT INTO Cafeteria (Nombre, ID_Piso) VALUES ('Cafetería A', 1);
INSERT INTO Cafeteria (Nombre, ID_Piso) VALUES ('Cafetería B', 5);
INSERT INTO Cafeteria (Nombre, ID_Piso) VALUES ('Cafetería C', 7);
INSERT INTO Cafeteria (Nombre, ID_Piso) VALUES ('Cafetería D', 10);
INSERT INTO Cafeteria (Nombre, ID_Piso) VALUES ('Cafetería E', 11);
INSERT INTO Cafeteria (Nombre, ID_Piso) VALUES ('Cafetería F', 13);
INSERT INTO Cafeteria (Nombre, ID_Piso) VALUES ('Cafetería G', 17);
INSERT INTO Cafeteria (Nombre, ID_Piso) VALUES ('Cafetería H', 21);
INSERT INTO Cafeteria (Nombre, ID_Piso) VALUES ('Cafetería I', 24);
INSERT INTO Cafeteria (Nombre, ID_Piso) VALUES ('Cafetería J', 27);
INSERT INTO Cafeteria (Nombre, ID_Piso) VALUES ('Cafetería K', 28);
INSERT INTO Cafeteria (Nombre, ID_Piso) VALUES ('Cafetería L', 32);
INSERT INTO Cafeteria (Nombre, ID_Piso) VALUES ('Cafetería M', 37);

--- Producto

INSERT INTO Producto (Nombre_Producto, Precio, Cantidad_Reoreden, Nivel_Reorden) VALUES ('Té', 10, 3, 5000);
INSERT INTO Producto (Nombre_Producto, Precio, Cantidad_Reoreden, Nivel_Reorden) VALUES ('Galleta', 30, 2, 1500);
INSERT INTO Producto (Nombre_Producto, Precio, Cantidad_Reoreden, Nivel_Reorden) VALUES ('Bebida Energética', 20, 0, 8000);
INSERT INTO Producto (Nombre_Producto, Precio, Cantidad_Reoreden, Nivel_Reorden) VALUES ('Ensalada', 12000, 10, 4);
INSERT INTO Producto (Nombre_Producto, Precio, Cantidad_Reoreden, Nivel_Reorden) VALUES ('Fruta', 2500, 15, 5);
INSERT INTO Producto (Nombre_Producto, Precio, Cantidad_Reoreden, Nivel_Reorden) VALUES ('Agua', 1000, 50, 10);
INSERT INTO Producto (Nombre_Producto, Precio, Cantidad_Reoreden, Nivel_Reorden) VALUES ('Sopa', 7000, 5, 2);
INSERT INTO Producto (Nombre_Producto, Precio, Cantidad_Reoreden, Nivel_Reorden) VALUES ('Wrap', 15000, 7 ,3);
INSERT INTO Producto (Nombre_Producto, Precio, Cantidad_Reoreden, Nivel_Reorden) VALUES ('Bocadillo', 3000, 15, 4);
INSERT INTO Producto (Nombre_Producto, Precio, Cantidad_Reoreden, Nivel_Reorden) VALUES ('Helado', 4500, 10, 1);
INSERT INTO Producto (Nombre_Producto, Precio, Cantidad_Reoreden, Nivel_Reorden) VALUES ('Smoothie', 10000, 5, 1);
INSERT INTO Producto (Nombre_Producto, Precio, Cantidad_Reoreden, Nivel_Reorden) VALUES ('Brownie', 3500, 20, 5);
INSERT INTO Producto (Nombre_Producto, Precio, Cantidad_Reoreden, Nivel_Reorden) VALUES ('Pizza', 20000, 3, 1);
INSERT INTO Producto (Nombre_Producto, Precio, Cantidad_Reoreden, Nivel_Reorden) VALUES ('Hot Dog', 6000, 11, 4);
INSERT INTO Producto (Nombre_Producto, Precio, Cantidad_Reoreden, Nivel_Reorden) VALUES ('Croissant', 2500, 15, 6);

--- Colaborador

INSERT INTO Colaborador (Nombre, Tipo_Contrato, Nombre_Cafeteria, Porcentaje_Comision) VALUES ('María González', 'PLANTA', 'Cafetería A', 10);
INSERT INTO Colaborador (Nombre, Tipo_Contrato, Nombre_Cafeteria, Porcentaje_Comision) VALUES ('Pedro López', 'TEMPORAL', 'Cafetería A', 8);
INSERT INTO Colaborador (Nombre, Tipo_Contrato, Nombre_Cafeteria, Porcentaje_Comision) VALUES ('Sofía Martínez', 'PLANTA', 'Cafetería B', 7);
INSERT INTO Colaborador (Nombre, Tipo_Contrato, Nombre_Cafeteria, Porcentaje_Comision) VALUES ('Luis Ramírez', 'TEMPORAL', 'Cafetería B', 12);
INSERT INTO Colaborador (Nombre, Tipo_Contrato, Nombre_Cafeteria, Porcentaje_Comision) VALUES ('Ana Torres', 'PLANTA', 'Cafetería C', 5);
INSERT INTO Colaborador (Nombre, Tipo_Contrato, Nombre_Cafeteria, Porcentaje_Comision) VALUES ('Javier Gómez', 'TEMPORAL', 'Cafetería C', 2);
INSERT INTO Colaborador (Nombre, Tipo_Contrato, Nombre_Cafeteria, Porcentaje_Comision) VALUES ('Clara Fernández', 'PLANTA', 'Cafetería D', 10);
INSERT INTO Colaborador (Nombre, Tipo_Contrato, Nombre_Cafeteria, Porcentaje_Comision) VALUES ('Diego Herrera', 'TEMPORAL', 'Cafetería D', 12);
INSERT INTO Colaborador (Nombre, Tipo_Contrato, Nombre_Cafeteria, Porcentaje_Comision) VALUES ('Elena Martínez', 'PLANTA', 'Cafetería E', 8);
INSERT INTO Colaborador (Nombre, Tipo_Contrato, Nombre_Cafeteria, Porcentaje_Comision) VALUES ('Fernando Torres', 'TEMPORAL', 'Cafetería E', 9);
INSERT INTO Colaborador (Nombre, Tipo_Contrato, Nombre_Cafeteria, Porcentaje_Comision) VALUES ('Gabriel Salazar', 'PLANTA', 'Cafetería F', 10);
INSERT INTO Colaborador (Nombre, Tipo_Contrato, Nombre_Cafeteria, Porcentaje_Comision) VALUES ('Isabel Rojas', 'TEMPORAL', 'Cafetería F', 11);
INSERT INTO Colaborador (Nombre, Tipo_Contrato, Nombre_Cafeteria, Porcentaje_Comision) VALUES ('Julián Suárez', 'PLANTA', 'Cafetería G', 14);
INSERT INTO Colaborador (Nombre, Tipo_Contrato, Nombre_Cafeteria, Porcentaje_Comision) VALUES ('Karla Medina', 'TEMPORAL', 'Cafetería G', 7);
INSERT INTO Colaborador (Nombre, Tipo_Contrato, Nombre_Cafeteria, Porcentaje_Comision) VALUES ('Laura Castillo', 'PLANTA', 'Cafetería H', 6);
INSERT INTO Colaborador (Nombre, Tipo_Contrato, Nombre_Cafeteria, Porcentaje_Comision) VALUES ('Martín Vega', 'TEMPORAL', 'Cafetería H', 2);
INSERT INTO Colaborador (Nombre, Tipo_Contrato, Nombre_Cafeteria, Porcentaje_Comision) VALUES ('Nicolás Acosta', 'PLANTA', 'Cafetería I', 5);
INSERT INTO Colaborador (Nombre, Tipo_Contrato, Nombre_Cafeteria, Porcentaje_Comision) VALUES ('Olga López', 'TEMPORAL', 'Cafetería I', 10);
INSERT INTO Colaborador (Nombre, Tipo_Contrato, Nombre_Cafeteria, Porcentaje_Comision) VALUES ('Pablo Gómez', 'PLANTA', 'Cafetería J', 9);
INSERT INTO Colaborador (Nombre, Tipo_Contrato, Nombre_Cafeteria, Porcentaje_Comision) VALUES ('Rosa Martínez', 'TEMPORAL', 'Cafetería J', 10);
INSERT INTO Colaborador (Nombre, Tipo_Contrato, Nombre_Cafeteria, Porcentaje_Comision) VALUES ('Santiago Díaz', 'PLANTA', 'Cafetería K', 8);
INSERT INTO Colaborador (Nombre, Tipo_Contrato, Nombre_Cafeteria, Porcentaje_Comision) VALUES ('Teresa Ramírez', 'TEMPORAL', 'Cafetería K', 12);
INSERT INTO Colaborador (Nombre, Tipo_Contrato, Nombre_Cafeteria, Porcentaje_Comision) VALUES ('Ulises Moreno', 'PLANTA', 'Cafetería L', 15);
INSERT INTO Colaborador (Nombre, Tipo_Contrato, Nombre_Cafeteria, Porcentaje_Comision) VALUES ('Valeria Silva', 'TEMPORAL', 'Cafetería L', 13);
INSERT INTO Colaborador (Nombre, Tipo_Contrato, Nombre_Cafeteria, Porcentaje_Comision) VALUES ('Walter Hernández', 'PLANTA', 'Cafetería M', 8);
INSERT INTO Colaborador (Nombre, Tipo_Contrato, Nombre_Cafeteria, Porcentaje_Comision) VALUES ('Ximena González', 'TEMPORAL', 'Cafetería M', 2);

--- InventarioCafeteria
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería A', 'Té', 12); -- Té
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería A', 'Galleta', 3); -- Galleta
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería A', 'Fruta', 12); -- Fruta
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería A', 'Agua', 9); -- Agua
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería A', 'Sopa', 8); -- Sopa
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería A', 'Bocadillo', 11); -- Bocadillo
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería A', 'Helado', 5); -- Helado
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería A', 'Brownie', 12); -- Brownie
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería A', 'Pizza', 7); -- Pizza
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería A', 'Hot Dog', 11); -- Hot Dog
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería A', 'Croissant', 9); -- Croissant


INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería B', 'Té', 12); -- Té
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería B', 'Galleta', 13); -- Galleta
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería B', 'Ensalada', 6); -- Ensalada
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería B', 'Fruta', 9); -- Fruta
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería B', 'Sopa', 3); -- Sopa
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería B', 'Wrap', 4); -- Wrap
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería B', 'Bocadillo', 4); -- Bocadillo
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería B', 'Helado', 8); -- Helado
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería B', 'Smoothie', 12); -- Smoothie
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería B', 'Brownie', 12); -- Brownie
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería B', 'Pizza', 13); -- Pizza
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería B', 'Hot Dog', 14); -- Hot Dog


INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería C', 'Té', 14); -- Té
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería C', 'Bebida Energética', 10); -- Bebida Energética
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería C', 'Fruta', 10); -- Fruta
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería C', 'Agua', 12); -- Agua
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería C', 'Sopa', 4); -- Sopa
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería C', 'Wrap', 13); -- Wrap
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería C', 'Bocadillo', 9); -- Bocadillo
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería C', 'Helado', 4); -- Helado
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería C', 'Smoothie', 11); -- Smoothie
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería C', 'Brownie', 12); -- Brownie
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería C', 'Pizza', 4); -- Pizza
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería C', 'Hot Dog', 4); -- Hot Dog
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería C', 'Croissant', 11); -- Croissant


INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería D', 'Té', 14); -- Té
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería D', 'Galleta', 5); -- Galleta
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería D', 'Bebida Energética', 4); -- Bebida Energética
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería D', 'Ensalada', 7); -- Ensalada
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería D', 'Fruta', 13); -- Fruta
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería D', 'Agua', 4); -- Agua
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería D', 'Bocadillo', 9); -- Bocadillo
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería D', 'Helado', 4); -- Helado
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería D', 'Smoothie', 12); -- Smoothie
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería D', 'Brownie', 12); -- Brownie
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería D', 'Pizza', 13); -- Pizza
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería D', 'Hot Dog', 6); -- Hot Dog


INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería E', 'Té', 12); -- Té
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería E', 'Galleta', 12); -- Galleta
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería E', 'Bebida Energética', 10); -- Bebida Energética
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería E', 'Fruta', 6); -- Fruta
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería E', 'Agua', 14); -- Agua
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería E', 'Sopa', 7); -- Sopa
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería E', 'Bocadillo', 9); -- Bocadillo
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería E', 'Helado', 4); -- Helado
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería E', 'Smoothie', 11); -- Smoothie
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería E', 'Croissant', 12); -- Croissant


INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería F', 'Té', 5); -- Té
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería F', 'Galleta', 8); -- Galleta
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería F', 'Bebida Energética', 6); -- Bebida Energética
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería F', 'Fruta', 7); -- Fruta
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería F', 'Agua', 14); -- Agua
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería F', 'Sopa', 9); -- Sopa
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería F', 'Wrap', 7); -- Wrap
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería F', 'Bocadillo', 7); -- Bocadillo
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería F', 'Smoothie', 5); -- Smoothie
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería F', 'Brownie', 6); -- Brownie
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería F', 'Pizza', 7); -- Pizza
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería F', 'Croissant', 13); -- Croissant


INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería G', 'Té', 11); -- Té
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería G', 'Galleta', 9); -- Galleta
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería G', 'Bebida Energética', 3); -- Bebida Energética
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería G', 'Ensalada', 9); -- Ensalada
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería G', 'Fruta', 4); -- Fruta
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería G', 'Agua', 11); -- Agua
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería G', 'Sopa', 3); -- Sopa
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería G', 'Smoothie', 11); -- Smoothie
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería G', 'Brownie', 3); -- Brownie
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería G', 'Pizza', 11); -- Pizza
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería G', 'Hot Dog', 10); -- Hot Dog
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería G', 'Croissant', 7); -- Croissant


INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería H', 'Té', 11); -- Té
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería H', 'Galleta', 4); -- Galleta
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería H', 'Fruta', 6); -- Fruta
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería H', 'Agua', 12); -- Agua
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería H', 'Sopa', 8); -- Sopa
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería H', 'Bocadillo', 3); -- Bocadillo
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería H', 'Helado', 12); -- Helado
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería H', 'Smoothie', 4); -- Smoothie
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería H', 'Brownie', 14); -- Brownie
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería H', 'Pizza', 10); -- Pizza
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería H', 'Hot Dog', 9); -- Hot Dog
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería H', 'Croissant', 3); -- Croissant


INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería I', 'Galleta', 10); -- Galleta
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería I', 'Bebida Energética', 10); -- Bebida Energética
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería I', 'Ensalada', 10); -- Ensalada
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería I', 'Agua', 11); -- Agua
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería I', 'Sopa', 10); -- Sopa
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería I', 'Wrap', 7); -- Wrap
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería I', 'Bocadillo', 5); -- Bocadillo
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería I', 'Helado', 11); -- Helado
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería I', 'Smoothie', 3); -- Smoothie
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería I', 'Brownie', 13); -- Brownie
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería I', 'Pizza', 14); -- Pizza
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería I', 'Hot Dog', 11); -- Hot Dog
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería I', 'Croissant', 6); -- Croissant


INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería J', 'Galleta', 10); -- Galleta
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería J', 'Bebida Energética', 14); -- Bebida Energética
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería J', 'Ensalada', 9); -- Ensalada
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería J', 'Fruta', 3); -- Fruta
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería J', 'Agua', 12); -- Agua
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería J', 'Helado', 4); -- Helado
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería J', 'Smoothie', 12); -- Smoothie
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería J', 'Brownie', 10); -- Brownie
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería J', 'Pizza', 14); -- Pizza
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería J', 'Hot Dog', 6); -- Hot Dog


INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería K', 'Té', 14); -- Té
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería K', 'Galleta', 6); -- Galleta
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería K', 'Bebida Energética', 11); -- Bebida Energética
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería K', 'Ensalada', 3); -- Ensalada
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería K', 'Fruta', 11); -- Fruta
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería K', 'Agua', 7); -- Agua
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería K', 'Sopa', 7); -- Sopa
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería K', 'Wrap', 11); -- Wrap
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería K', 'Bocadillo', 14); -- Bocadillo
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería K', 'Helado', 11); -- Helado
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería K', 'Smoothie', 11); -- Smoothie
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería K', 'Brownie', 8); -- Brownie
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería K', 'Pizza', 4); -- Pizza 
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería K', 'Hot Dog', 13); -- Hot Dog
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería K', 'Croissant', 12); -- Croissant


INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería L', 'Té', 7); -- Té
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería L', 'Galleta', 11); -- Galleta
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería L', 'Bebida Energética', 4); -- Bebida Energética
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería L', 'Ensalada', 13); -- Ensalada
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería L', 'Fruta', 7); -- Fruta
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería L', 'Agua', 11); -- Agua
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería L', 'Sopa', 6); -- Sopa
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería L', 'Wrap', 9); -- Wrap
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería L', 'Helado', 11); -- Helado
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería L', 'Smoothie', 13); -- Smoothie
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería L', 'Brownie', 8); -- Brownie
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería L', 'Pizza', 11); -- Pizza
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería L', 'Hot Dog', 6); -- Hot Dog


INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería M', 'Té', 8); -- Té
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería M', 'Galleta', 14); -- Galleta
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería M', 'Bebida Energética', 6); -- Bebida Energética
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería M', 'Wrap', 11); -- Wrap
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería M', 'Bocadillo', 7); -- Bocadillo
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería M', 'Helado', 10); -- Helado
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería M', 'Smoothie', 5); -- Smoothie
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería M', 'Brownie', 13); -- Brownie
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería M', 'Pizza', 11); -- Pizza
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería M', 'Hot Dog', 14); -- Hot Dog
INSERT INTO InventarioCafeteria (Nombre_Cafeteria, Nombre_Producto, Existencias) VALUES ('Cafetería M', 'Croissant', 12); -- Croissant

--- INVOICE 1

INSERT INTO Compra (ID_Miembro, ID_Colaborador, Fecha, Total_Compra) VALUES (1, 1, TO_DATE('20-03-2023', 'DD-MM-YYYY'), 47500); -- Compra ID 1

INSERT INTO CompraxProducto (ID_Compra, Nombre_Producto, Cantidad) VALUES (1, 'Pizza', 1);  -- 1 Pizza
INSERT INTO CompraxProducto (ID_Compra, Nombre_Producto, Cantidad) VALUES (1, 'Té', 2);  -- 2 Té
INSERT INTO CompraxProducto (ID_Compra, Nombre_Producto, Cantidad) VALUES (1, 'Bebida Energética', 1);  -- 1 Bebida Energética

INSERT INTO TxPuntos (ID_Compra, Fecha, Total_Puntos, Tipo, ID_Miembro) VALUES (1, TO_DATE('20-03-2023', 'DD-MM-YYYY'), 38, 'ACUMULAR', 1);

INSERT INTO ImpuestoXCompra (ID_Compra, Tipo_Impuesto, Porcentaje) VALUES (1, 'IVA', 19);
INSERT INTO ImpuestoXCompra (ID_Compra, Tipo_Impuesto, Porcentaje) VALUES (1, 'ICA', 6);

INSERT INTO Pago (ID_Compra, Monto_total, Metodo_Pago) VALUES (1, 47500, 'EFECTIVO');

-- INVOICE 2

INSERT INTO Compra (ID_Miembro, ID_Colaborador, Fecha, Total_Compra) VALUES (3, 5, TO_DATE('24-03-2023', 'DD-MM-YYYY'), 21000);

INSERT INTO CompraxProducto (ID_Compra, Nombre_Producto, Cantidad) VALUES (2, 'Sopa', 1);  -- 1 Sopa
INSERT INTO CompraxProducto (ID_Compra, Nombre_Producto, Cantidad) VALUES (2, 'Té', 1);  -- 1 Té
INSERT INTO CompraxProducto (ID_Compra, Nombre_Producto, Cantidad) VALUES (2, 'Helado', 2);  -- 2 Helado

INSERT INTO TxPuntos (ID_Compra, Fecha, Total_Puntos, Tipo, ID_Miembro) VALUES (1, TO_DATE('24-03-2023', 'DD-MM-YYYY'), 21, 'ACUMULAR', 3);

INSERT INTO ImpuestoXCompra (ID_Compra, Tipo_Impuesto, Porcentaje) VALUES (2, 'IVA', 19);

INSERT INTO Pago (ID_Compra, Monto_total, Metodo_Pago, Numero_Tarjeta) VALUES (2, 20000, 'CREDITO', '2332223211232232');
INSERT INTO Pago (ID_Compra, Monto_total, Metodo_Pago) VALUES (2, 4990, 'EFECTIVO');