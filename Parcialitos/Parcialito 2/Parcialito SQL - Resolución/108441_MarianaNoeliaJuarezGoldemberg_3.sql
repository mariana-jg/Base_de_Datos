SELECT car.codigo AS codigo_carrera, n.codigo AS codigo_departamento, AVG(n.nota) as promedio
FROM carreras car INNER JOIN inscripto_en insc ON (car.codigo = insc.codigo)
INNER JOIN alumnos alum ON (alum.padron = insc.padron)
INNER JOIN notas n ON (alum.padron = n.padron)
GROUP BY car.codigo, n.codigo

-- Resultado --
-- 5	62	7.2500000000000000
-- 10	71	6.7500000000000000
-- 6	61	8.8000000000000000
-- 9	75	6.6923076923076923
-- 5	61	7.0000000000000000
-- 6	62	7.0000000000000000
-- 9	71	6.7142857142857143
-- 10	75	6.5000000000000000