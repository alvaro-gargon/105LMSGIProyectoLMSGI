(:25. Mostrar el título y el número de caracteres que tiene cada título, cada uno con su propia etiqueta.:)
<libros>
{
for $x in //book
return <libro>
        <titulo>{$x/title/text()}</titulo>
        <caracteres>{string-length($x/title/text())}</caracteres>
      </libro> 
 }
</libros>
