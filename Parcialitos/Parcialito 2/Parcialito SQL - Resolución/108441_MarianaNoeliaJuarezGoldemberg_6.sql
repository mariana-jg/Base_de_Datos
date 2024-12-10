WITH materias_interes AS (
    SELECT codigo, numero
    FROM notas
    WHERE nota >= 4 AND padron = 83000
)

SELECT n.padron
FROM notas n
INNER JOIN materias_interes m
    ON (n.codigo = m.codigo AND n.numero = m.numero)
GROUP BY n.padron
HAVING COUNT(*) >= (SELECT COUNT(*) FROM materias_interes)

-- Resultado --
-- 85000
-- 83000
-- 84000