(:6. Insertar un nuevo nodo llamado estado con valor pagada dentro de en la factura F001:)
for $doc in collection("facturas")
where $doc/factura/@id='F001'
return insert node <estado>pagada</estado>as last into $doc/factura 