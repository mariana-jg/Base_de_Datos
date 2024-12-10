SELECT alum.padron, alum.apellido
FROM alumnos alum INNER JOIN notas n ON (alum.padron = n.padron)
WHERE n.nota >= 7
GROUP BY alum.padron, alum.apellido
HAVING COUNT(1) >= ALL (
SELECT COUNT(1)
FROM notas n INNER JOIN alumnos alum ON(n.padron = alum.padron)
	WHERE n.nota >= 7
	GROUP BY alum.padron, alum.apellido
)

-- Resultados --
-- 88000	"Vargas"
-- 86000	"Díaz"
-- 83000	"Gómez"
-- 85000	"Fernández"
