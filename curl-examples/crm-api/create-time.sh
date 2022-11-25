# note this endpoint requires the newer Case identifier "OrqaCaseId"
# as opposed to the Case.Code used in many other CRM API requests

# the response will be the id of the time entry
# you cannot edit the time item, but you can request deletion via a DELETE request:
# DELETE https://api.{quill-domain}.co.uk/quillapi5/timerecording/{id}

curl --location --request POST 'https://api.{quill-domain}.co.uk/quillapi5/timerecording \
--header 'clientId: {your-tenant-id-here}' \
--header 'Accept: application/Json' \
--header 'Authorization: Bearer {your-token}' \
--header 'Content-Type: application/json' \
--data-raw '{
  "OrqaCaseId": "2022-11-24_EZ30-FDKW-NJW0",
  "OrqaDocumentId": null,
  "CaseCode": "MRP0011",
  "UploadAtNote": false,
  "Description": "Meeting with client",
  "Created": "2022-11-24T10:25:00Z",
  "IgnoreTimeLimit": false,
  "FeeEarnerCode": 2,
  "WorkTypeCode": "LO",
  "RateSchemeCode": 1,
  "Units": 5,
  "Notes": "details notes about this activity"
}';
