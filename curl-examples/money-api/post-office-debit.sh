#e.g. pay a disbursement or expense
curl --location --request POST
'https://i3.{quill-domain}/api/{tenant-uri}/money/office/debits/' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer {your-token}' \
--header 'Content-Type: text/plain' \
--data-raw '{
  "paymentMethod": "CASH",
  "account": {
    "displayCode": "SAL0041",
    "nominalBranch": null,
    "nominalCode": null,
    "supplierCode": null
 }
 "bank": "1",
 "disbCategory": 1,
 "disbType": "COURT",
 "amount": {
  "vatRateId": "A",
  "vat": 10,
  "net": 15.50,
  "total": null
 }
 "date": "2017-10-16T14:09:31Z",
 "reference": "ref",
 "payee": "Homar Sampson",
 "paymentDetails": {
    "accountNumber": "12345678",
    "sortCode": "123456",
  "iban": null,
  "bicCode": null,
  "paymentReference": "pay ref"
 }
 "narrative": "office debit example",
 "notes": "Example notes"
}
