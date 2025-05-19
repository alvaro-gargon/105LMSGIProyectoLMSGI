(:24:)
for $x in
//book[contains(title, 'X') or contains(title,'x')]
order by $x/title descending
return $x