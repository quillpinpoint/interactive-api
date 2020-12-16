curl --location --request POST 'https://i3.{quill-domain}/api/{tenant-uri}/Money/Bills/' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {your-token}' \
--data-raw '{
    "displayCode": "ABC0011",
    "narrative": "Bill description",
    "reference": "AUTO",
    "feeItems": [
	    {
            "cost": 100.00,
            "vatRateId": "A",
            "vatValue": 20.00
        },
        {
            "cost": 200.00,
            "vatRateId": "A",
            "vatValue": 40.00
        }
    ],
    "expenseItems": [
	    {
			"date": "2020-12-16T14:09:31Z",
			"description": "Expense description 1",
			"cost": 50.00,
			"vatRateId": "A",
			"vatValue": 10.00
		},
		{
			"date": "2020-12-16T14:09:31Z",
			"description": "Expense description 2",
			"cost": 37.50,
			"vatRateId": "E",
			"vatValue": 0.00
		}
	],
	"disbursementItems": [
	    {
			"date": "2020-12-16T14:09:31Z",
			"description": "Disbursement description 1",
			"cost": 500.00,
			"vatRateId": "E",
			"vatValue": 0.00
		},
		{
			"date": "2020-12-16T14:09:31Z",
			"description": "Disbursement description 2",
			"cost": 250.00,
			"vatRateId": "E",
			"vatValue": 0.00
		}
    ]
}'
