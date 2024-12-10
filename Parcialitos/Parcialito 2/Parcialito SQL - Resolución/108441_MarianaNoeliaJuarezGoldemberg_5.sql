SELECT alum.padron, n.codigo, n.numero, n.nota
FROM alumnos alum INNER JOIN notas n ON (alum.padron = n.padron)
GROUP BY alum.padron, n.codigo, n.numero, n.nota
HAVING alum.fecha_ingreso >= ALL (
SELECT fecha_ingreso FROM alumnos
	GROUP BY padron
)

-- Resultado --
-- 88000	75	1	9
-- 88000	71	14	8
-- 88000	75	42	7
-- 88000	75	6	9