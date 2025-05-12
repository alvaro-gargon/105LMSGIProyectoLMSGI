(:Esto es un comentario:)
(:1.Consulta: Lista el título de los libros ordenados por título.:)
for $x in /bookstore/book
order by $x/title/text()
return $x/title/text()