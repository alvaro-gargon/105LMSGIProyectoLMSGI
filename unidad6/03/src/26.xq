(:26. Mostrar todos los años en los que se ha publicado un libro eliminando los repetidos. Etiquétanos
con "año":) (:distinct-values quita los años repetidos:)
declare option output:indent "yes";
<años_publicacion>
{
for $x in distinct-values(//book/year)
order by $x
return <anyo>{ $x }</anyo>
}
</años_publicacion>

