(:17. Mostrar el título del libro, su precio y su precio con el IVA incluido, cada uno con su propia etiqueta.
Ordenado de precio con IVA (4% en España):)
<libros>
  {
    for $x in /bookstore/book
    let $iva:= $x/price *1.04
    return
    <precioLibro>
      <titulo>{$x/title/text()}</titulo>
      <precio>{$x/price/text() }</precio>
      <precioIva>{format-number($iva,'#.00')}</precioIva>
    </precioLibro>
  }
</libros>