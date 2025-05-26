(:4. Listado de los cursos que imparte el profesor con el siguiente DNI: 33856315:)
for $x in collection("academia")
where $x/curso/profesor[@idref=
  (
  for $y in collection("academia")
  where $y/profesor/dni=33856315
  return data($y/profesor/@id)
  )
] return $x/curso/nombre/text()