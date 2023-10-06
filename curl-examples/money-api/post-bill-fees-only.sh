#as @ 16-12-2020, this endpoint throws a 500 if no expenseItems or disbursementItems are present - this will hopefully be fixed in a future release 
#also, as description is mandatory, a fake description must be sent to get around a 400 validation error
curl --location --request POST 'https://i3.{quill-domain}/api/{tenant-uri}/money/bills/' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {your-token}' \
--data-raw '{
    "displayCode": "ABC0011",
    "narrative": "Bill description",
    "reference": "AUTO",
    "notes": "Some notes for Cashier" # Optional field
    "feeItems": [
	    {
            "cost": 100.00,
            "vatRateId": "A",
            "vatValue": 20.00
	    "FeeEarnerCode": 2 # Optional Field, Cases default FE will be used otherwise
        },
        {
            "cost": 200.00,
            "vatRateId": "A",
            "vatValue": 40.00
	    "FeeEarnerCode": 2 # Optional Field, Cases default FE will be used otherwise
        }
    ],
    "expenseItems": [{ "description": "fake description work around"}],
    "disbursementItems": [{ "description": "fake description work around"}]
}'
