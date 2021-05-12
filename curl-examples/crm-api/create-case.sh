curl --location --request POST 'https://api.ourdomain.co.uk/quillapi5/cases' \
--header 'clientId: {your-tenant-id-here}' \
--header 'Accept: application/Json' \
--header 'Authorization: Bearer {your-token}' \
--header 'Content-Type: application/json' \
--data-raw '{
  "VendorCode": "YOUR-CASE-REF",
  "Description": "Description of this case",
  "DateOpened": "2020-05-04T00:00:00+01:00",
  "CaseType": { "Code": "01" },
  "Branch": { "Code": "1" },
  "FeeEarner": { "Code": "3" },
  "Partner": { "Code": "3" },
  "Source": { "Code": "4" }
}'
