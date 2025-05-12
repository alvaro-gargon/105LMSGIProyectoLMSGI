(:5. Crea una página web (05.html), que contenga todos los libros con su categoría, en la lista aparece
distintos colores el título en función de la categoría.:)

<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>UD6-3.5 Categoria de colores. Alvaro Garcia Gonzalez</title>
</head>
<body>
    <h1>BOOKSTORE</h1>
    <table>
      <tr>
        <th>Titulo</th>
        <th>Categoría</th>
      </tr>
      {
        for $x in /bookstore/book
        return <tr>
                  <td>{data($x/title)}</td>
                  <td>{data($x/@category)}</td>
                </tr>
      }
    </table>
    <ul>
    {
      for $x in /bookstore/book
      return <li class="{data($x/@category)}">
                  {data($x/title)}
             </li>
    }         
    </ul>
</body>
</html>