SELECT alum.padron, alum.apellido
FROM alumnos alum
INNER JOIN notas n1 ON (alum.padron = n1.padron)
INNER JOIN notas n2 ON (alum.padron = n2.padron)
WHERE (n1.codigo = 75 AND n1.numero = 40)
  AND (n2.codigo = 75 AND n2.numero = 41)
  AND alum.padron NOT IN (
    SELECT padron
    FROM notas
    WHERE (codigo = 62 AND numero = 5)
       AND (codigo = 75 AND numero = 1)
);

-- Resultado --
-- 83000	"Gómez"
-- 84000	"López"
-- 85000	"Fernández"