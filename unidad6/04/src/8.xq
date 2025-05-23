(:8. Renombrar el nodo total por importeTotal:)
for $doc in collection("facturas")
return rename node $doc/factura/total as "importeTotal"