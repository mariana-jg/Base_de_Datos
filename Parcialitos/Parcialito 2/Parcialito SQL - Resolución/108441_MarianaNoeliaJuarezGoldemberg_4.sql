SELECT alum.padron, alum.apellido, AVG(n.nota) as promedio
FROM alumnos alum INNER JOIN notas n on (alum.padron = n.padron)
WHERE alum.padron IN (
	SELECT padron from notas
	GROUP BY padron HAVING COUNT(*)> 4)
	AND alum.padron IN (
		SELECT padron FROM notas
		GROUP BY padron HAVING AVG(nota) >= 6
	)
GROUP BY alum.padron, alum.apellido	

-- Resultado --
-- 73000	"Molina"	6.6000000000000000
-- 86000	"Díaz"	7.8000000000000000