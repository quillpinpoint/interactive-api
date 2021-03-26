#you must always specify fetchChildCollections whether true or false
curl --location --request GET 'https://{domain}/quillapi5/clients/CRU001?fetchChildCollections=false' \
--header 'clientId: {tenantId}' \
--header 'Authorization: Bearer {token}'
