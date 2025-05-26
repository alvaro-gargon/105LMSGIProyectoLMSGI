(:5 Nombre de los cursos que no han finalizado:)
(:for $x in collection ("academia")
where $x/curso/@id="1"
return replace value of node $x/curso/fin with "1/12/2025":)
for $x in collection ("academia")
where $x/curso/fin>
format-date(xs:date(current-date()), '[D]/[M]/[Y]')
return $x/curso/nombre/text()