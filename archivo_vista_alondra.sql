USE DB_Customer360_Lab;
GO

CREATE OR ALTER VIEW vw_consulta_ventas_alondra_vianey
AS
SELECT
    c.cliente_id,
    c.nombre,
    c.email,
    c.ciudad,
    v.venta_id,
    v.monto_venta,
    v.fecha_venta
FROM Tabla_Clientes c
INNER JOIN Tabla_Ventas v
    ON c.cliente_id = v.cliente_id;
GO

SELECT *
FROM vw_consulta_ventas_alondra_vianey;
GO