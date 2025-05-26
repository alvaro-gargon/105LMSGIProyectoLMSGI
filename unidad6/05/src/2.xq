(:2. Qué cursos imparten/o han impartido clases en el "Aula 1":)
for $x in collection("academia")//curso
let $aula :=collection("academia")//aula[nombre="Aula 1"]
where $aula/@id = $x/aula/@idref
return data($x//nombre)