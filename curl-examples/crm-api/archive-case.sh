curl --location --request POST 'https://api.{quill-domain}.co.uk/quillapi5/archive \
--header 'clientId: {your-tenant-id-here}' \
--header 'Accept: application/Json' \
--header 'Authorization: Bearer {your-token}' \
--header 'Content-Type: application/json' \
--data-raw '{
  "Code": "ABC0011",
  "ArchiveNumber": "123456",
  "Location": "Manchester",
  "Boxnumber": "123456"
}'
