#you must always specify fetchChildCollections whether true or false
curl --location --request GET 'https://api.{quill-domain}.co.uk/quillapi5/clients/CRU001?fetchChildCollections=false' \
--header 'clientId: {tenantId}' \
--header 'Authorization: Bearer {token}'
