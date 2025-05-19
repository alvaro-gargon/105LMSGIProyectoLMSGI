(:en vez de usar > podemos usar "gt" (el igual no existe):)
for $x in /bookstore/book
where count($x/author)>2
return $x/title/text()