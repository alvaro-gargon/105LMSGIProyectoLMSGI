(:13. Mostrar los libros ordenador primero por “category” y luego por “title” en una sola consulta.:)
<libros>
{
  for $x in /bookstore/book
  order by $x/@category, $x/title/text()
  return concat($x/@category," ",$x/title/text(),",")
}
</libros>