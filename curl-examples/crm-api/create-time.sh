curl --location --request POST 'https://api.ourdomain.co.uk/quillapi5/timerecording \
--header 'clientId: {your-tenant-id-here}' \
--header 'Accept: application/Json' \
--header 'Authorization: Bearer {your-token}' \
--header 'Content-Type: application/json' \
--data-raw '{
  "OrqaCaseId": "2021-01-12_QGF5-MDF6-KS70",
  "Description": "Meeting with client",
  "Created": [dateTime],
  "IgnoreTimeLimit": True,
  "FeeEarnerCode": 2,
  "WorkTypeCode": "ME",
  "RateSchemeCode": 1,
  "Units": 5,
  "Notes: "details notes about this activity"
}'
