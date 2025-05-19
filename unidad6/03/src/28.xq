(:28. Mostrar los títulos en una tabla de HTML.:)
(:añadir el resto del html:)
<table>
  <tr><th>Titulo</th></tr>
  {
    for $x in //book/title/text()
    return <tr><td>{$titulo}</td></tr>
  }
</table>