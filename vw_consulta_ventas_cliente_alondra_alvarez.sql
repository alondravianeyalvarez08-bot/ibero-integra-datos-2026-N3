--Vistas

USE DB_Customer360_Lab;
GO

CREATE OR ALTER VIEW vw_consulta_ventas_cliente_alondra_alvarez
AS
SELECT
    c.cliente_id,
    c.nombre AS nombre_apellido,
    v.venta_id,
    v.monto_venta,
    v.fecha_venta
FROM Tabla_Clientes c
INNER JOIN Tabla_Ventas v
    ON c.cliente_id = v.cliente_id;
GO


-- Ver el resultado de la vista
SELECT *
FROM vw_consulta_ventas_cliente_alondra_alvarez
GO