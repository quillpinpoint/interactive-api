#based on the standard Quill case code (aka "DisplayCode")
curl --location --request GET 'https://{domain}/quillapi5/cases/CRU0011' \
--header 'clientId: {tenantId}' \
--header 'Authorization: Bearer {token}'

#based on "VendorCode" (which is usually populated with the integrator's own unique case id)
curl --location --request GET 'https://{domain}/quillapi5/cases/VendorCode/7454573' \
--header 'clientId: {tenantId}' \
--header 'Authorization: Bearer {token}'


#example json response:
#{
#    "DefaultRateScheme": 1,
#    "LegalAid": {
#        "IsLookup": true,
#        "Code": "PRIV",
#        "Description": "Private"
#    },
#    "VendorCode": "7454573",
#    "Client": {
#        "_contacts": null,
#        "Cases": null,
#        "NumberOfContacts": 0,
#        "IsCompany": false,
#        "IncorporationDate": null,
#        "IncorporationCountry": null,
#        "VatRegistered": false,
#        "VatRegistrationNumber": null,
#        "CertificateRegistrationNumber": null,
#        "OrqaId": "2021-05-24_2HRD-R371-XPH1",
#        "IsLookup": true,
#        "Code": "CRU001",
#        "Description": "Cruz Joseph"
#    },
#    "MatterCode": "000001",
#    "Branch": {
#        "IsLookup": true,
#        "Code": "-1",
#        "Description": "--"
#    },
#    "CaseType": {
#        "GuidId": "some-guid",
#        "OrqaId": "",
#        "Notes": "",
#        "Code": "-1",
#        "Description": "--",
#        "QuillObjectState": 1
#    },
#    "Contacts": null,
#    "GuidId": "some-other-guid",
#    "OrqaId": "2021-05-24_9GHZ-WKSF-B132",
#    "Code": "BIL0011",
#    "Description": "Purchase of 123 Blue Lane",
#    "Owner": {
#        "Code": "CRU0011"
#    }
#}

