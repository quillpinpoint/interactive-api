# with +1 hour offset e.g. during British Summer Time (BST) - note the + is urlencoded
curl --location --request GET 'https://api.{our-domain}.co.uk/quillapi5/cases-changed?since=2021-01-01T00:00:00%2B1:00' \
--header 'clientId: {tenantId}' \
--header 'Authorization: Bearer {token}'

# no offset for regular GMT
curl --location --request GET 'https://api.{our-domain}/quillapi5/cases-changed?since=2021-01-01T00:00:00Z' \
--header 'clientId: {tenantId}' \
--header 'Authorization: Bearer {token}'

