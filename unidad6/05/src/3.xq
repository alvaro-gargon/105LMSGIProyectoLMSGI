(:3 . Mostrar el nombre y email de los profesores que imparten el curso "Bases de Datos OR":)
for $x in collection("academia")
where $x/profesor[@id=
  (for $y in collection("academia")
  where $y/curso/nombre/text()="Bases de Datos OR"
  return data($y/curso/profesor/@idref)
  )
]
return concat($x/profesor/nombre/text()," ",$x/profesor/email/text())