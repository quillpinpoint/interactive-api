#the recommended Client description format is: "{lastname} {firstname} {title}"
#because Quill system generates the client code based on the first characters of that string
curl --location --request POST 'https://api.{quill-domain}/quillapi5/clients' \
 --header 'clientId: {your-tenant-id-here}' \
 --header 'Accept: application/Json' \
 --header 'Authorization: Bearer {your-token}' \
 --header 'Content-Type: application/json' \
 --data-raw '{
    "Description": "Bloggs Joe Mr",
    "_contacts": [
        {
            "LastName": "Bloggs",
            "FirstName": "Joe",
            "Title": "Mr",
            "EMail1": "joe.bloggs@mydomain.co.uk",
            "JobTitle": "Software Developer",
            "Organisation": "ACME Legal Ltd",
            "NI": "NH123456A",
            "BirthDate": "1995-04-30",
            "_homeAddress": {
                "AddressName": "Mr J Bloggs",
                "Salutation": "Mr Bloggs",
                "Line1": "25 Park Drive",
                "Line2": "Bury",
                "Town": "Manchester",
                "Postcode": "AB1 2CD"
            },
            "_homePhoneNumber": {
                "AreaCode": "01234",
                "Phone": "567890"
            }
        }
    ]
}'
