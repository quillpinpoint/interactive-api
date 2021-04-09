# with 1 hour offset e.g. when UK has switch to a daylight saving time (DST) zone - note the + is urlencoded
curl --location --request GET 'https://api.{quill-domian}/quillapi5/cases-changed?since=2021-01-01T00:00:00%2B1:00' \
--header 'clientId: {tenantId}' \
--header 'Authorization: Bearer {token}'

# no offset for standard GMT
curl --location --request GET 'https://api.{quill-domian}/quillapi5/cases-changed?since=2021-01-01T00:00:00Z' \
--header 'clientId: {tenantId}' \
--header 'Authorization: Bearer {token}'

