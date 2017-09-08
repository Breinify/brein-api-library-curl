>
```shell
 $ curl --ipv4 -X POST https://api.breinify.com/activity \
	 -H "cache-control: no-cache" \
	 -H "Content-Type: text/json; charset=utf-8" \
	 -d '{ "apiKey": "938D-3120-64DD-413F-BB55-6573-90CE-473A", "activity": { "type": "checkOut", "tags": { "productPrices": [ 134.23, 15.13, 12.99 ], "productIds": [ "125689", "982361", "157029" ] } }, "user": { "sessionId": "966542c6-2399-11e7-93ae-92361f002671" } }'
```